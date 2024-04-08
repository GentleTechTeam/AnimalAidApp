import 'package:flutter_parsed_text/flutter_parsed_text.dart';
import 'package:flutter_test/flutter_test.dart';

Finder findParsedText(String text) => find.byWidgetPredicate(
      (widget) => widget is ParsedText && widget.text == text,
    );
