import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Finder findImageByUrl(String url) => find.byWidgetPredicate((widget) {
      if (widget is! Image) {
        return false;
      }
      final imageProvider = widget.image;
      if (imageProvider is! NetworkImage) {
        return false;
      }
      return imageProvider.url == url;
    });
