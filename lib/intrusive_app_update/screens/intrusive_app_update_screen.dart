import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/intrusive_app_update/widgets/update_suggestion/update_suggestion.dart';
import 'package:flutter/material.dart';

class IntrusiveAppUpdateScreen extends StatelessWidget {
  const IntrusiveAppUpdateScreen({
    Key? key,
  }) : super(key: key);

  static String createRoutePath() => '/intrusive-app-update';

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(context.strings.updateRequired),
            automaticallyImplyLeading: false,
          ),
          body: UpdateSuggestion(),
        ),
      );
}
