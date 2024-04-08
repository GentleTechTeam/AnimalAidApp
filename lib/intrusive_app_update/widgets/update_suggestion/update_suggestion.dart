import 'package:animal_aid_app/intrusive_app_update/services/client_meta_service.dart';
import 'package:animal_aid_app/intrusive_app_update/widgets/update_suggestion/views/update_app_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateSuggestion extends StatelessWidget {
  final ClientMetaService _clientMeta = GetIt.I<ClientMetaService>();

  UpdateSuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => UpdateAppView(
        // ignore: avoid-non-null-assertion
        onUpdateButtonPressed: () => launch(_clientMeta.updateUrl!),
      );
}
