import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> openDrawer(WidgetTester tester) async {
  final scaffoldFinder = find.byType(Scaffold);
  (tester.state(scaffoldFinder) as ScaffoldState).openDrawer();
  await tester.pumpAndSettle();
}
