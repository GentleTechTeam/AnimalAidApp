import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class SearchTextFieldSuffixIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final bool hasTextValue;
  final ValueStream<bool> hasTextValueStream;

  const SearchTextFieldSuffixIcon({
    Key? key,
    required this.onPressed,
    required this.hasTextValue,
    required this.hasTextValueStream,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return IconButton(
      onPressed: onPressed,
      icon: StreamBuilder<bool>(
        initialData: hasTextValue,
        stream: hasTextValueStream,
        builder: (_, snapshot) => AnimatedSwitcher(
          duration: appTheme.timing.medium,
          child: (snapshot.data ?? false)
              ? const Icon(
                  Icons.close,
                  key: WidgetKeys.locationsSearchButtonCloseIcon,
                )
              : const Icon(
                  Icons.search,
                  key: WidgetKeys.locationsSearchButtonSearchIcon,
                ),
        ),
      ),
    );
  }
}
