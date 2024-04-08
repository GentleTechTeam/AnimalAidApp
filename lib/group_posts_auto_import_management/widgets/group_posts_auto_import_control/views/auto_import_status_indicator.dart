import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class AutoImportStatusIndicator extends StatelessWidget {
  final LoadingStatus status;

  const AutoImportStatusIndicator({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final indicatorSize = appTheme.sizes.sIconSize;

    switch (status) {
      case LoadingStatus.loading:
        {
          return SizedBox(
            width: indicatorSize,
            height: indicatorSize,
            child: CircularProgressIndicator(
              strokeWidth: appTheme.sizes.lBorderWidth,
            ),
          );
        }
      case LoadingStatus.error:
        {
          return Icon(
            Icons.error,
            size: indicatorSize,
            color: Theme.of(context).errorColor,
          );
        }
      default:
        {
          return SizedBox(
            width: indicatorSize,
            height: indicatorSize,
          );
        }
    }
  }
}
