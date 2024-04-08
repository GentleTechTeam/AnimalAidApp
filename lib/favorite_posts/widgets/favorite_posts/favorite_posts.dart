import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/widgets/posts/post_interactive_text_builder.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_separator.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_post_state/favorite_post_cubit.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_post_state/favorite_post_state.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_post_status_state/favorite_post_status_cubit.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_post_status_state/favorite_post_status_state.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_posts_list_state/favorite_posts_list_cubit.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_posts_list_state/favorite_posts_list_state.dart';
import 'package:animal_aid_app/favorite_posts/widgets/favorite_posts/views/favorite_post_view.dart';
import 'package:animal_aid_app/favorite_posts/widgets/favorite_posts/views/favorite_posts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

typedef FavoritePostBuilder = BlocBuilder<FavoritePostCubit, FavoritePostState>;
typedef FavoritePostStatusBuilder
    = BlocBuilder<FavoritePostStatusCubit, FavoritePostStatusState>;

class FavoritePosts extends StatelessWidget {
  const FavoritePosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PostInteractiveTextBuilder(
        builder: (_, onTapInteractiveText) => BlocProvider(
          create: (_) => FavoritePostsListCubit(),
          child: BlocBuilder<FavoritePostsListCubit, FavoritePostsListState>(
            builder: (favPostsListCtx, favPostsListState) {
              final favoritePosts = favPostsListState.favoritePosts;

              return FavoritePostsView(
                favoritePosts: favPostsListState.favoritePosts,
                loadingStatus: favPostsListState.loadingStatus,
                onRefresh: () async => _onRefresh(favPostsListCtx),
                child: ListView.separated(
                  separatorBuilder: (_, __) => const PostSeparator(),
                  itemCount: favoritePosts.length,
                  itemBuilder: (_, index) {
                    final currentItem = favoritePosts[index];

                    return BlocProvider(
                      create: (_) => FavoritePostCubit(
                        groupId: currentItem.groupId,
                        postId: currentItem.postId,
                      )..getPost(),
                      child: FavoritePostBuilder(
                        builder: (_, favPostState) => BlocProvider(
                          create: (_) => FavoritePostStatusCubit(
                            groupId: currentItem.groupId,
                            postId: currentItem.postId,
                          ),
                          child: FavoritePostStatusBuilder(
                            builder: (favPostStatusCtx, favPostStatusState) =>
                                FavoritePostView(
                              post: favPostState.post,
                              groupId: currentItem.groupId,
                              postId: currentItem.postId,
                              favoritePostLoadingStatus:
                                  favPostState.loadingStatus,
                              isFavorite: favPostStatusState.isFavorite,
                              onTapPostHeader: () => _navigateToPostScreen(
                                context: context,
                                groupId: currentItem.groupId,
                                postId: currentItem.postId,
                              ),
                              onTapInteractiveText: onTapInteractiveText,
                              onToggleFavorite: () => _onToggleFavorite(
                                favPostStatusCtx,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      );

  void _onRefresh(BuildContext context) =>
      context.read<FavoritePostsListCubit>().getFavoritePosts();

  void _navigateToPostScreen({
    required BuildContext context,
    required String groupId,
    required String postId,
  }) =>
      GetIt.I<NavigatorService>().navigateToPostScreen(
        context: context,
        groupId: groupId,
        postId: postId,
      );

  void _onToggleFavorite(BuildContext context) =>
      context.read<FavoritePostStatusCubit>().toggleFavoriteStatus();
}
