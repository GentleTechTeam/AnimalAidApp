import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

typedef ExtractLabelFromItem<T> = String Function(T item);
typedef ExtractKeyFromItem<T> = String Function(T item);
typedef OnItemPressed<T> = void Function(T item, bool toggledState);

class ToggleableItems<T> extends StatelessWidget {
  final Iterable<T> items;
  final Set<String> toggledItems;
  final OnItemPressed<T>? onItemPressed;
  final ExtractLabelFromItem<T> extractLabelFromItem;
  final ExtractKeyFromItem<T> extractKeyFromItem;

  const ToggleableItems({
    Key? key,
    required this.items,
    required this.toggledItems,
    this.onItemPressed,
    required this.extractLabelFromItem,
    required this.extractKeyFromItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final theme = Theme.of(context);

    return Wrap(
      spacing: appTheme.spacing.xsValue,
      children: items.map((item) {
        final itemKey = extractKeyFromItem(item);
        final itemLabel = extractLabelFromItem(item);
        final isToggled = toggledItems.contains(itemKey);

        return FilterChip(
          onSelected: onItemPressed == null
              ? null
              : (_value) {
                  // ignore: avoid-non-null-assertion
                  onItemPressed!(item, isToggled);
                },
          label: Text(itemLabel),
          disabledColor: isToggled ? theme.disabledColor : null,
          backgroundColor: isToggled ? theme.primaryColor : null,
          labelStyle: isToggled
              ? TextStyle(color: appTheme.colors.primaryForeground)
              : null,
        );
      }).toList(),
    );
  }
}
