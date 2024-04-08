import 'package:animal_aid_app/generated/l10n.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  /// TODO: Remove this field and ignore the `current` field properly.
  /// This is a hack to shut the "unused l10n" checker up about the `current` field.
  // ignore: unused_element
  I18n get _unusedCurrentFix => I18n.current;

  I18n get strings => I18n.of(this);
}
