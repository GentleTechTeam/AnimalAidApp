import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoGallery extends StatefulWidget {
  final Iterable<String> imageUrls;
  final int initialIndex;

  const PhotoGallery({
    Key? key,
    required this.imageUrls,
    required this.initialIndex,
  }) : super(key: key);

  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  int? _currentIndexState;

  void onPhotoChanged(int photoIndex) {
    setState(() {
      _currentIndexState = photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final textColor = appTheme.colors.white;

    final imageUrlsCount = widget.imageUrls.length;

    return Column(
      children: [
        AppBar(
          backgroundColor: appTheme.colors.withWeakOpacity(textColor),
          title: Text(
            context.strings.imageCount(_currentIndex + 1, imageUrlsCount),
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor),
          ),
        ),
        Expanded(
          child: PhotoViewGallery.builder(
            backgroundDecoration: BoxDecoration(color: appTheme.colors.black),
            pageController: PageController(initialPage: widget.initialIndex),
            onPageChanged: onPhotoChanged,
            itemCount: imageUrlsCount,
            builder: (_, index) => _buildGalleryItems(index),
            scrollPhysics: const BouncingScrollPhysics(),
            loadingBuilder: (context, event) {
              final progress =
                  (event == null || event.expectedTotalBytes == null)
                      ? 0.0
                      // ignore: avoid-non-null-assertion
                      : event.cumulativeBytesLoaded / event.expectedTotalBytes!;

              return Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(value: progress),
              );
            },
          ),
        ),
      ],
    );
  }

  int get _currentIndex => _currentIndexState ?? widget.initialIndex;

  PhotoViewGalleryPageOptions _buildGalleryItems(int index) {
    final currentImageUrl = widget.imageUrls.elementAt(index);

    return PhotoViewGalleryPageOptions(
      imageProvider: NetworkImage(currentImageUrl),
    );
  }
}
