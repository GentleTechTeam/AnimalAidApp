import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/state/main_tag_groups/main_tag_groups_cubit.dart';
import 'package:animal_aid_app/common/state/main_tag_groups/main_tag_groups_state.dart';
import 'package:animal_aid_app/common/widgets/app_drawer/app_drawer.dart';
import 'package:animal_aid_app/posts_feed/utils/widget_with_exposed_scroll_controller.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed/posts_feed.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed_by_tag.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed_location_control/posts_feed_location_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsFeedLayout extends StatelessWidget {
  const PostsFeedLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<MainTagGroupsCubit, MainTagGroupsState>(
      builder: (_, state) {
        final mainPostsFeed = PostsFeed.withDefaultParams();
        if (state.data.isEmpty) {
          return Scaffold(
            appBar: AppBar(
              key: WidgetKeys.shelterPostsAppBar,
              title: Text(context.strings.shelterPosts),
            ),
            body: mainPostsFeed,
            drawer: const AppDrawer(),
            floatingActionButton: const PostsFeedLocationControl(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniEndFloat,
          );
        }

        final feedContainers = <WidgetWithExposedScrollController>[
          mainPostsFeed,
          ...state.data.map((tag) => PostsFeedByTag(tagGroupId: tag.id)),
        ];

        final tabs = [
          Tab(text: context.strings.all),
          ...state.data.map((tag) => Tab(text: tag.label)),
        ];

        return DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            appBar: AppBar(
              key: WidgetKeys.shelterPostsAppBar,
              title: Text(context.strings.shelterPosts),
              bottom: TabBar(
                physics: const BouncingScrollPhysics(),
                isScrollable: true,
                onTap: (index) => _onTabBarItemTap(
                  index: index,
                  feedContainers: feedContainers,
                  screenHeight: screenHeight,
                ),
                tabs: tabs,
              ),
            ),
            body: TabBarView(
              key: WidgetKeys.postFeedTabsContent,
              physics: const BouncingScrollPhysics(),
              children: feedContainers,
            ),
            drawer: const AppDrawer(),
            floatingActionButton: const PostsFeedLocationControl(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniEndFloat,
          ),
        );
      },
    );
  }

  void _onTabBarItemTap({
    required int index,
    required List<WidgetWithExposedScrollController> feedContainers,
    required double screenHeight,
  }) {
    final targetScrollController = feedContainers[index].scrollController;
    if (targetScrollController.hasClients) {
      // Jump to value enough to trigger pull to refresh.
      targetScrollController.jumpTo(-screenHeight);
    }
  }
}
