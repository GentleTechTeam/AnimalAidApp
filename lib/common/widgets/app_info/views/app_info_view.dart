import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/state/app_info/app_info_state.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/app_info/views/email_us_button.dart';
import 'package:animal_aid_app/common/widgets/app_info/views/privacy_policy_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInfoView extends StatelessWidget {
  final AppInfoState appInfo;

  const AppInfoView({
    Key? key,
    required this.appInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final captionStyle = Theme.of(context).textTheme.caption;

    return Padding(
      padding: EdgeInsets.all(appTheme.spacing.xsValue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Copyright © GentleTech',
            style: captionStyle,
            textAlign: TextAlign.center,
          ),
          if (appInfo.version.isNotEmpty)
            Text(
              '${appInfo.name} v.${appInfo.version}',
              style: captionStyle,
              textAlign: TextAlign.center,
            ),
          PrivacyPolicyButton(
            onPressed: () => _goToPrivacyPolicy(
              urlNotSupportedMessage: context.strings.linkNotSupported,
            ),
          ),
          SizedBox(height: appTheme.spacing.x2sValue),
          EmailUsButton(
            onPressed: () => _initEmailToSupport(
              urlNotSupportedMessage: context.strings.linkNotSupported,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _goToPrivacyPolicy({
    required String urlNotSupportedMessage,
  }) async {
    await _handleUrl(appInfo.privacyPolicyUrl, urlNotSupportedMessage);
  }

  Future<void> _initEmailToSupport({
    required String urlNotSupportedMessage,
  }) async {
    final emailUrl = 'mailto:${appInfo.supportEmail}';
    await _handleUrl(emailUrl, urlNotSupportedMessage);
  }

  Future<void> _handleUrl(
    String url,
    String urlNotSupportedMessage,
  ) async {
    final canLaunchUrl = await canLaunch(url);
    if (!canLaunchUrl) {
      await EasyLoading.showToast(
        urlNotSupportedMessage,
        dismissOnTap: true,
      );

      return;
    }

    // ignore: avoid-ignoring-return-values
    await launch(url);
  }
}
