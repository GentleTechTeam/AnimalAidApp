import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_photos/count_mask.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_photos/flexible_on_tap_detector.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_photos/image_loading_placeholder.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_photos/loading_image_transition.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_photos/post_image_builder.dart';
import 'package:flutter/material.dart';

class TwoPostImages extends StatelessWidget {
  final String firstImageUrl;
  final String secondImageUrl;
  final VoidCallback onTapFirstImage;
  final VoidCallback onTapSecondImage;
  final int totalImagesCount;

  const TwoPostImages({
    Key? key,
    required this.firstImageUrl,
    required this.secondImageUrl,
    required this.onTapFirstImage,
    required this.onTapSecondImage,
    required this.totalImagesCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PostImageBuilder(
        imgUrl: firstImageUrl,
        buildImage: (img, progress, aspectRatio) => PostImageBuilder(
          imgUrl: secondImageUrl,
          buildImage: (secondImg, secondProgress, secondAspectRatio) =>
              _PostImagesFrame(
            imagesReady: progress == 1 &&
                secondProgress == 1 &&
                aspectRatio != null &&
                secondAspectRatio != null,
            postImages: _PostImages(
              firstImage: img,
              secondImage: secondImg,
              firstImageAspectRatio: aspectRatio ?? 1,
              secondImageAspectRatio: secondAspectRatio ?? 1,
              onFirstImageTap: onTapFirstImage,
              onSecondImageTap: onTapSecondImage,
              totalImagesCount: totalImagesCount,
            ),
            loadingIndicator: _LoadingIndicator(
              firstImageProgress: progress,
              secondImageProgress: secondProgress,
            ),
          ),
        ),
      );
}

class _PostImagesFrame extends StatelessWidget {
  final bool imagesReady;
  final _PostImages postImages;
  final _LoadingIndicator loadingIndicator;

  const _PostImagesFrame({
    Key? key,
    required this.imagesReady,
    required this.postImages,
    required this.loadingIndicator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => LoadingImageTransition(
        showFirst: imagesReady,
        firstChild: imagesReady ? postImages : const SizedBox.shrink(),
        secondChild: loadingIndicator,
      );
}

class _PostImages extends StatelessWidget {
  final Widget firstImage;
  final Widget secondImage;
  final int firstImageAspectRatio;
  final int secondImageAspectRatio;
  final VoidCallback onFirstImageTap;
  final VoidCallback onSecondImageTap;
  final int totalImagesCount;

  const _PostImages({
    Key? key,
    required this.firstImage,
    required this.secondImage,
    required this.firstImageAspectRatio,
    required this.secondImageAspectRatio,
    required this.onFirstImageTap,
    required this.onSecondImageTap,
    required this.totalImagesCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    final secondImageWidget = totalImagesCount > 2
        ? CountMask(img: secondImage, hiddenImagesCount: totalImagesCount - 1)
        : secondImage;

    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FlexibleOnTapDetector(
            flex: firstImageAspectRatio,
            child: firstImage,
            onTap: onFirstImageTap,
          ),
          SizedBox(width: appTheme.spacing.x3sValue),
          FlexibleOnTapDetector(
            flex: secondImageAspectRatio,
            child: secondImageWidget,
            onTap: onSecondImageTap,
          ),
        ],
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  final double firstImageProgress;
  final double secondImageProgress;

  const _LoadingIndicator({
    Key? key,
    required this.firstImageProgress,
    required this.secondImageProgress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: ImageLoadingPlaceholder(
              progressValue: firstImageProgress,
            ),
          ),
          Expanded(
            child: ImageLoadingPlaceholder(
              progressValue: secondImageProgress,
            ),
          ),
        ],
      );
}
