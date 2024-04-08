import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

Future<void> pageBack(WidgetTester tester) async {
  final navigatorService = GetIt.I<NavigatorService>();

  final anyNavigatorDescendant = find.descendant(
      of: find.byType(Navigator),
      matching: find.byWidgetPredicate((widget) => widget is StatefulWidget));
  final allNavigatorDescendantStates = tester.stateList(anyNavigatorDescendant);
  navigatorService.pop<void>(
      context: allNavigatorDescendantStates.last.context);

  await tester.pumpAndSettle();
}
