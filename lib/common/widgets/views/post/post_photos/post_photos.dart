import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/photo_gallery.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_photos/single_post_image.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_photos/two_post_images.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PostPhotos extends StatelessWidget {
  final Iterable<String> imageUrls;
  const PostPhotos({Key? key, required this.imageUrls}) : super(key: key);

  void openGallery({
    required BuildContext context,
    required int urlIndex,
  }) {
    final appTheme = AppTheme.read(context);
    final blackColor = appTheme.colors.black;

    // ignore: avoid-ignoring-return-values
    showCupertinoModalBottomSheet<Widget>(
      barrierColor: blackColor,
      // ignore: no-equal-arguments
      backgroundColor: blackColor,
      context: context,
      builder: (BuildContext context) => PhotoGallery(
        imageUrls: imageUrls,
        initialIndex: urlIndex,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (imageUrls.isEmpty) {
      return const SizedBox.shrink();
    }

    if (imageUrls.length == 1) {
      return SinglePostImage(
        onTapImage: () => openGallery(context: context, urlIndex: 0),
        imgUrl: imageUrls.first,
      );
    }

    return TwoPostImages(
      firstImageUrl: imageUrls.first,
      secondImageUrl: imageUrls.elementAt(1),
      onTapFirstImage: () => openGallery(context: context, urlIndex: 0),
      onTapSecondImage: () => openGallery(context: context, urlIndex: 1),
      totalImagesCount: imageUrls.length,
    );
  }
}
