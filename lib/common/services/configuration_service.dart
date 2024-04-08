import 'dart:convert';

import 'package:animal_aid_app/common/constants/runtime_environment.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

const String _baseAppSettingsFileDestination = 'assets/cfg/app_settings';

class ConfigurationService {
  static const String _buildEnv = String.fromEnvironment('BUILD_ENV');
  final Map<String, dynamic> _appSettings;

  ConfigurationService._(this._appSettings);

  String get smmWrapperServiceUrl {
    if (kReleaseMode) {
      return _appSettings['smmWrapperServiceUrl'] as String;
    }

    final host = RuntimeEnvironment.isAndroid ? '10.0.2.2' : 'localhost';

    return 'http://$host:1234/';
  }

  String get buildEnv => _buildEnv;

  static Future<ConfigurationService> init() async {
    final appSettings = await ConfigurationService._loadAppSettings();

    return ConfigurationService._(appSettings);
  }

  static Future<Map<String, dynamic>> _loadAppSettings() async {
    final appSettings = json.decode(await rootBundle.loadString(
      '$_baseAppSettingsFileDestination.json',
    )) as Map<String, dynamic>;

    if (_buildEnv.isEmpty) {
      return appSettings;
    }

    final buildEnvSpecificAppSettings = json.decode(
      await rootBundle.loadString(
        '${_baseAppSettingsFileDestination}_$_buildEnv.json',
      ),
    ) as Map<String, dynamic>;
    appSettings.addAll(buildEnvSpecificAppSettings);

    return appSettings;
  }
}
