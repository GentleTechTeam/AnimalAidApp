import 'package:animal_aid_app/common/constants/supported_locale.dart';
import 'package:animal_aid_app/common/extensions/supported_locale_extension.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SupportedLocaleExtension test', () {
    group('fromLocaleName method test', () {
      test('Convert "en" locale', () {
        expect(
          SupportedLocaleExtension.fromLocaleName('en'),
          SupportedLocale.en,
        );
      });

      test('Convert "en" locale', () {
        expect(
          SupportedLocaleExtension.fromLocaleName('en'),
          SupportedLocale.en,
        );
      });
    });
  });
}
