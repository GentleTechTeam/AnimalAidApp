import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/widgets/views/hint.dart';
import 'package:flutter/material.dart';

class MainTagsDisclaimer extends StatelessWidget {
  const MainTagsDisclaimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Hint(
        text: context.strings.mainTagsDisclaimer,
      );
}
