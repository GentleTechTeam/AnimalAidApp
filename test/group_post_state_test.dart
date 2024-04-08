import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/state/group_posts/group_posts_state.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';

GroupPostsState _generateGroupPostsState(int count) =>
    GroupPostsState.fromApiData(
        rawData: _generateGroupPostsList(count).build());

List<GGroupPostsData_groupPosts_items> _generateGroupPostsList(int count) =>
    <GGroupPostsData_groupPosts_items>[
      for (var i = 1; i <= count; i += 1) _generateGroupPostData(i.toString())
    ];

GGroupPostsData_groupPosts_items _generateGroupPostData(String id) =>
    GGroupPostsData_groupPosts_items((b) => b
      ..G__typename = 'GroupPost'
      ..id = id
      ..creationDate = DateTime.now().toIso8601String()
      ..description = 'Mock post description'
      ..photoAttachmentUrls = ListBuilder()
      ..published = false
      ..assignedTags = ListBuilder());

void main() {
  group('group_post_state module tests', () {
    final groupPostsState = _generateGroupPostsState(2);
    final stateWithNewPostDecision =
        groupPostsState.rebuildWithNewPostDecision(id: '1', newValue: true);

    test(
        'Operation “generate toggle posts payload” should generate payload for posts using'
        ' local decisions. In our case, its should return api payload for single post with id=1;',
        () {
      final _groupPostsState = _generateGroupPostsState(1);
      final stateWithNewPostDecision =
          _groupPostsState.rebuildWithNewPostDecision(id: '1', newValue: true);
      final postPayLoad =
          stateWithNewPostDecision.generateTogglePostsPayload('someGroupId');
      final expectedResult = [
        GTogglePostsInFeedPayload.fromJson(<String, dynamic>{
          'groupId': 'someGroupId',
          'postId': '1',
          'enabled': true,
        })
      ];
      expect(postPayLoad, expectedResult);
    });

    group('State rebuilds', () {
      test(
          'If user adds tag to post with no tags, then updated state should contain post data with updated tags',
          () {
        final _groupPostsState = _generateGroupPostsState(1);
        final editedGroupPost = _generateGroupPostData('1')
            .rebuild((b) => b.assignedTags = ListBuilder(<String>['urgently']));
        final groupPostsStateWithUpdatedPostData =
            _groupPostsState.rebuildWithPostData(editedGroupPost);
        expect(
          groupPostsStateWithUpdatedPostData.getItemById('1')!.assignedTags,
          editedGroupPost.assignedTags,
        );
      });

      test(
          '“toggle all posts” operation should mark all posts as published if some of them was not published previously',
          () {
        final stateWithToggleSelectAll =
            stateWithNewPostDecision.rebuildAndToggleSelectAll();
        expect(stateWithToggleSelectAll.getItemPublishedStatus('1'), true);
        expect(stateWithToggleSelectAll.getItemPublishedStatus('2'), true);
      });

      test(
          '“toggle all posts” operation should mark some posts as published if none of them was published previously',
          () {
        final stateWithToggleSelectAll =
            groupPostsState.rebuildAndToggleSelectAll();
        expect(stateWithToggleSelectAll.getItemPublishedStatus('1'), true);
        expect(stateWithToggleSelectAll.getItemPublishedStatus('2'), true);
      });

      test(
          '“toggle all posts” operation should mark all posts as unpublished if all of them was published previously',
          () {
        final stateWithToggleSelectAll =
            groupPostsState.rebuildAndToggleSelectAll();
        final stateWithToggleUnSelectAll =
            stateWithToggleSelectAll.rebuildAndToggleSelectAll();
        expect(stateWithToggleUnSelectAll.getItemPublishedStatus('1'), false);
        expect(stateWithToggleUnSelectAll.getItemPublishedStatus('2'), false);
      });

      test(
          'If “toggle all posts” operation reverts state to initial state received'
          ' from api, then local decisions should be empty.', () {
        final stateWithToggleSelectAll =
            groupPostsState.rebuildAndToggleSelectAll();
        final stateWithToggleUnselectAll =
            stateWithToggleSelectAll.rebuildAndToggleSelectAll();
        expect(stateWithToggleUnselectAll.hasLocalDecisions, false);
      });

      test(
          'If “toggle all posts” operation updates state with new local decisions, then hasLocalDecisions should return true',
          () {
        final stateWithToggleSelectAll =
            groupPostsState.rebuildAndToggleSelectAll();
        expect(stateWithToggleSelectAll.hasLocalDecisions, true);
      });

      test(
          'If the loading status changes, the state should change accordingly.',
          () {
        final stateWithNewLoadingStatus =
            groupPostsState.rebuildWithLoadingStatus(LoadingStatus.loading);
        expect(stateWithNewLoadingStatus.loadingStatus, LoadingStatus.loading);
      });

      test(
          'published status on posts should be updated based on updated local decisions',
          () {
        final stateWithNewPostDecision =
            groupPostsState.rebuildWithNewPostDecision(id: '1', newValue: true);
        final stateWithAppliedUserPostDecisions =
            stateWithNewPostDecision.rebuildWithAppliedUserPostDecisions();
        final groupPost = stateWithAppliedUserPostDecisions.getItemById('1');
        expect(groupPost?.published, true);
      });
    });

    group('Getters groupCount, loadingStatus, hasLocalDecisions', () {
      test(
          'groupPostsCount returns the number of posts in the group, in our case 2',
          () {
        expect(groupPostsState.groupPostsCount, 2);
      });

      test(
          'If there are no posts in the group, then groupPostCounts should return 0',
          () {
        final emptyState = GroupPostsState();
        expect(emptyState.groupPostsCount, 0);
      });

      test(
          'loadingStatus should return the correct status for the state, in our case LoadingStatus.done',
          () {
        expect(groupPostsState.loadingStatus, LoadingStatus.done);
      });

      test(
          'hasLocalDecisions return true/false based on local decisions list,'
          ' when local decisions is empty it should return false', () {
        expect(groupPostsState.hasLocalDecisions, false);
      });

      test(
          'hasLocalDecisions return true/false based on local decisions list,'
          ' when local decisions is not empty it should return true', () {
        expect(stateWithNewPostDecision.hasLocalDecisions, true);
      });

      test(
          'hasLocalDecisions return true/false based on local decisions list,'
          ' when new local decisions equals old decisions it should return false',
          () {
        final stateWithNewPostDecisionEqualsOldDecision = groupPostsState
            .rebuildWithNewPostDecision(id: '1', newValue: false);
        expect(
            stateWithNewPostDecisionEqualsOldDecision.hasLocalDecisions, false);
      });
    });

    group('Test if internal state for GroupPostState was provided or not', () {
      test(
          'If you initialize the state with no internal state, then the internal'
          ' state is created via GroupPostsInternalState.empty() and LoadingStatus.never',
          () {
        final groupPostsEmptyState = GroupPostsState();
        expect(groupPostsEmptyState.groupPostsCount, 0);
        expect(groupPostsEmptyState.loadingStatus, LoadingStatus.never);
      });
      test(
          'If you initialize the state with internal state with factory fromApi(),'
          'LoadingStatus should be "done" ', () {
        expect(groupPostsState.loadingStatus, LoadingStatus.done);
      });
    });

    group('getItemByIndex/getItemById should return correct item by ID/index',
        () {
      test('getItemByIndex operations return item based on provided index', () {
        final groupPost = groupPostsState.getItemByIndex(0);
        expect(groupPost?.id, '1');
      });

      test('getItemById operations return item based on provided id', () {
        final groupPost = groupPostsState.getItemById('1');
        expect(groupPost?.id, '1');
      });
    });

    group(
        'getItemPublishedStatus should return true/false based on published status',
        () {
      test(
          'getItemPublishedStatus should return true,'
          ' if post have published status set to true', () {
        expect(stateWithNewPostDecision.getItemPublishedStatus('1'), true);
      });

      test(
          'getItemPublishedStatus should return true,'
          ' if post have published status set to false', () {
        expect(groupPostsState.getItemPublishedStatus('1'), false);
      });
    });

    group('allItemsSelected should return true/false based on selected items',
        () {
      test(
          'Getter allItemsSelected should return false, when some posts are not selected',
          () {
        expect(groupPostsState.allItemsSelected, false);
      });

      test(
          'Getter allItemsSelected should return true if all posts are selected',
          () {
        final stateWithAllSelectedPosts =
            groupPostsState.rebuildAndToggleSelectAll();
        expect(stateWithAllSelectedPosts.allItemsSelected, true);
      });
    });
  });
}
