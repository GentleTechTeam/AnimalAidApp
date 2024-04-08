import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/cupertino.dart';

class CupertinoBottomDialogContentWrapper extends StatelessWidget {
  final Widget title;
  final Widget child;
  final Widget cancelButton;

  const CupertinoBottomDialogContentWrapper({
    Key? key,
    required this.title,
    required this.child,
    required this.cancelButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return CupertinoActionSheet(
      title: title,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: appTheme.spacing.xsValue),
          child: child,
        ),
        cancelButton,
      ],
    );
  }
}
