import 'package:animal_aid_app/common/widgets/views/post/post_photos/image_loading_placeholder.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_photos/loading_image_transition.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_photos/post_image_builder.dart';
import 'package:animal_aid_app/common/widgets/views/touchable_opacity.dart';
import 'package:flutter/material.dart';

class SinglePostImage extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTapImage;

  const SinglePostImage({
    Key? key,
    required this.imgUrl,
    required this.onTapImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TouchableOpacity(
        onTap: onTapImage,
        child: PostImageBuilder(
          imgUrl: imgUrl,
          buildImage: (img, progress, _aspectRatio) => LoadingImageTransition(
            showFirst: progress == 1,
            firstChild: img,
            secondChild: ImageLoadingPlaceholder(progressValue: progress),
          ),
        ),
      );
}
