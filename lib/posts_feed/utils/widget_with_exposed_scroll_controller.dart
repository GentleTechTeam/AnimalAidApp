import 'package:flutter/widgets.dart';

abstract class WidgetWithExposedScrollController extends Widget {
  final ScrollController scrollController;

  const WidgetWithExposedScrollController({
    Key? key,
    required this.scrollController,
  }) : super(key: key);
}
