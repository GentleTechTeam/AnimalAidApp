import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class MainTagInfoItem extends StatelessWidget {
  final String label;
  final Iterable<String> tagKeys;

  const MainTagInfoItem({
    Key? key,
    required this.label,
    required this.tagKeys,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return ListTile(
      title: Text(
        label,
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
      subtitle: Wrap(
        children: [
          Text(context.strings.options),
          ...tagKeys.map(
            (key) => Padding(
              padding: EdgeInsets.only(right: appTheme.spacing.x2sValue),
              child: Text(
                key,
                style: TextStyle(color: appTheme.colors.active),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
