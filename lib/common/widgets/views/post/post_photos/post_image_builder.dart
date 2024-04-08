import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

const _aspectRationMultiplier = 1000;

typedef BuildImage = Widget Function(
  Widget img,
  double progress,
  int? aspectRatio,
);

class PostImageBuilder extends StatefulWidget {
  final BuildImage buildImage;
  final ImageProvider _img;

  PostImageBuilder({
    Key? key,
    required String imgUrl,
    required this.buildImage,
  })  : _img = NetworkImage(imgUrl),
        super(key: key);

  @override
  _PostImageBuilderState createState() => _PostImageBuilderState();
}

class _PostImageBuilderState extends State<PostImageBuilder> {
  int? _aspectRatio;
  double _progressValue = 0;

  @override
  void initState() {
    super.initState();
    final _imageStreamListener = ImageStreamListener(
      (onImage, _) => _imageAvailableCallback(onImage),
      onChunk: _imageChunkReceived,
    );

    widget._img
        .resolve(const ImageConfiguration())
        .addListener(_imageStreamListener);
  }

  void updateImageDimensions({
    required int width,
    required int height,
  }) {
    if (mounted) {
      setState(() {
        _aspectRatio = ((width / height) * _aspectRationMultiplier).round();
      });
    }
  }

  void updateLoadingProgress(double progressValue) {
    if (mounted) {
      setState(() {
        _progressValue = progressValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return widget.buildImage(
      ConstrainedBox(
        constraints: BoxConstraints(maxHeight: appTheme.sizes.postImageHeight),
        child: Image(image: widget._img),
      ),
      _aspectRatio != null ? 1 : _progressValue,
      _aspectRatio,
    );
  }

  void _imageAvailableCallback(ImageInfo onImage) => updateImageDimensions(
        width: onImage.image.width,
        height: onImage.image.height,
      );

  void _imageChunkReceived(ImageChunkEvent loadingEvent) {
    final expectedTotalBytes = loadingEvent.expectedTotalBytes ?? 0;
    if (expectedTotalBytes == 0) {
      updateLoadingProgress(0);

      return;
    }

    final progress = loadingEvent.cumulativeBytesLoaded / expectedTotalBytes;

    updateLoadingProgress(progress);
  }
}
