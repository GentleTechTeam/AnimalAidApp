import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:flutter/material.dart';

String generateStatusText({
  required BuildContext context,
  required LoadingStatus loadingStatus,
  required bool isAutoImportEnabled,
}) {
  switch (loadingStatus) {
    case LoadingStatus.loading:
      {
        return context.strings.loading;
      }
    case LoadingStatus.done:
      {
        return isAutoImportEnabled
            ? context.strings.active
            : context.strings.notActive;
      }
    case LoadingStatus.error:
      {
        return context.strings.statusReceivingError;
      }
    default:
      {
        return '';
      }
  }
}
