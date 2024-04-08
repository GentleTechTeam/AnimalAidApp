import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class Hint extends StatelessWidget {
  final String text;

  const Hint({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    // TODO: Get rid of calls to native theme.
    final theme = Theme.of(context);

    return Card(
      margin: EdgeInsets.symmetric(horizontal: appTheme.spacing.xsValue),
      elevation: 0,
      color: theme.primaryColorLight,
      child: ListTile(
        leading: const Icon(Icons.info_outline),
        title: Text(
          text,
          style: theme.textTheme.caption,
        ),
      ),
    );
  }
}
