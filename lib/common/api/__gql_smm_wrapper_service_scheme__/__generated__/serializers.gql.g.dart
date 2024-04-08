// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GAppMetaData.serializer)
      ..add(GAppMetaData_appMeta.serializer)
      ..add(GAppMetaReq.serializer)
      ..add(GAppMetaVars.serializer)
      ..add(GAssignTagToApprovedPostData.serializer)
      ..add(GAssignTagToApprovedPostData_assignTagToApprovedPost.serializer)
      ..add(GAssignTagToApprovedPostReq.serializer)
      ..add(GAssignTagToApprovedPostVars.serializer)
      ..add(GChangeUserGroupLocationData.serializer)
      ..add(GChangeUserGroupLocationData_changeUserControlledGroupLocation
          .serializer)
      ..add(GChangeUserGroupLocationReq.serializer)
      ..add(GChangeUserGroupLocationVars.serializer)
      ..add(GCharityGroupApprovalStatus.serializer)
      ..add(GClientMetaData.serializer)
      ..add(GClientMetaData_mobileClientMeta.serializer)
      ..add(GClientMetaReq.serializer)
      ..add(GClientMetaVars.serializer)
      ..add(GDeleteTagFromApprovedPostData.serializer)
      ..add(GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost.serializer)
      ..add(GDeleteTagFromApprovedPostReq.serializer)
      ..add(GDeleteTagFromApprovedPostVars.serializer)
      ..add(GEnableGroupPostsAutoImportData.serializer)
      ..add(GEnableGroupPostsAutoImportReq.serializer)
      ..add(GEnableGroupPostsAutoImportVars.serializer)
      ..add(GGenerateLocationDataData.serializer)
      ..add(GGenerateLocationDataData_locationData.serializer)
      ..add(GGenerateLocationDataReq.serializer)
      ..add(GGenerateLocationDataVars.serializer)
      ..add(GGeoPositionInput.serializer)
      ..add(GGroupApprovalRequestsData.serializer)
      ..add(
          GGroupApprovalRequestsData_charityGroupsWaitingForApproval.serializer)
      ..add(GGroupApprovalRequestsReq.serializer)
      ..add(GGroupApprovalRequestsVars.serializer)
      ..add(GGroupPostsAutoImportEnabledStatusData.serializer)
      ..add(GGroupPostsAutoImportEnabledStatusReq.serializer)
      ..add(GGroupPostsAutoImportEnabledStatusVars.serializer)
      ..add(GGroupPostsAutoImportHintData.serializer)
      ..add(GGroupPostsAutoImportHintReq.serializer)
      ..add(GGroupPostsAutoImportHintVars.serializer)
      ..add(GGroupPostsData.serializer)
      ..add(GGroupPostsData_groupPosts.serializer)
      ..add(GGroupPostsData_groupPosts_items.serializer)
      ..add(GGroupPostsReq.serializer)
      ..add(GGroupPostsVars.serializer)
      ..add(GLocationDataInput.serializer)
      ..add(GMainTagGroupsData.serializer)
      ..add(GMainTagGroupsData_mainTagGroups.serializer)
      ..add(GMainTagGroupsReq.serializer)
      ..add(GMainTagGroupsVars.serializer)
      ..add(GMakeApprovalDecisionData.serializer)
      ..add(GMakeApprovalDecisionReq.serializer)
      ..add(GMakeApprovalDecisionVars.serializer)
      ..add(GPostData.serializer)
      ..add(GPostData_postsFeedItem.serializer)
      ..add(GPostData_postsFeedItem_group.serializer)
      ..add(GPostReq.serializer)
      ..add(GPostVars.serializer)
      ..add(GPostsFeedData.serializer)
      ..add(GPostsFeedData_postsFeed.serializer)
      ..add(GPostsFeedData_postsFeed_items.serializer)
      ..add(GPostsFeedData_postsFeed_items_group.serializer)
      ..add(GPostsFeedReq.serializer)
      ..add(GPostsFeedVars.serializer)
      ..add(GRefreshLocationDataData.serializer)
      ..add(GRefreshLocationDataData_refreshedLocationData.serializer)
      ..add(GRefreshLocationDataReq.serializer)
      ..add(GRefreshLocationDataVars.serializer)
      ..add(GRefreshLocationPayload.serializer)
      ..add(GReportPostConcernData.serializer)
      ..add(GReportPostConcernReq.serializer)
      ..add(GReportPostConcernVars.serializer)
      ..add(GRequestUserGroupApprovalData.serializer)
      ..add(GRequestUserGroupApprovalData_requestUserControlledGroupApproval
          .serializer)
      ..add(GRequestUserGroupApprovalReq.serializer)
      ..add(GRequestUserGroupApprovalVars.serializer)
      ..add(GSearchLocationsData.serializer)
      ..add(GSearchLocationsData_locations.serializer)
      ..add(GSearchLocationsReq.serializer)
      ..add(GSearchLocationsVars.serializer)
      ..add(GTogglePostsInFeedData.serializer)
      ..add(GTogglePostsInFeedPayload.serializer)
      ..add(GTogglePostsInFeedReq.serializer)
      ..add(GTogglePostsInFeedVars.serializer)
      ..add(GUserControlledGroupsData.serializer)
      ..add(GUserControlledGroupsData_userControlledGroups.serializer)
      ..add(GUserControlledGroupsReq.serializer)
      ..add(GUserControlledGroupsVars.serializer)
      ..add(GUserMetaData.serializer)
      ..add(GUserMetaData_userMeta.serializer)
      ..add(GUserMetaReq.serializer)
      ..add(GUserMetaVars.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(
                GGroupApprovalRequestsData_charityGroupsWaitingForApproval)
          ]),
          () => new ListBuilder<
              GGroupApprovalRequestsData_charityGroupsWaitingForApproval>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GGroupPostsData_groupPosts_items)]),
          () => new ListBuilder<GGroupPostsData_groupPosts_items>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GMainTagGroupsData_mainTagGroups)]),
          () => new ListBuilder<GMainTagGroupsData_mainTagGroups>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GPostsFeedData_postsFeed_items)]),
          () => new ListBuilder<GPostsFeedData_postsFeed_items>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GSearchLocationsData_locations)]),
          () => new ListBuilder<GSearchLocationsData_locations>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GTogglePostsInFeedPayload)]),
          () => new ListBuilder<GTogglePostsInFeedPayload>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(GUserControlledGroupsData_userControlledGroups)
          ]),
          () =>
              new ListBuilder<GUserControlledGroupsData_userControlledGroups>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
