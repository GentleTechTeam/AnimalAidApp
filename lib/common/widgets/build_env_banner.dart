import 'package:animal_aid_app/common/services/configuration_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class BuildEnvBanner extends StatelessWidget {
  final configuration = GetIt.I<ConfigurationService>();
  final Widget child;

  BuildEnvBanner({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buildEnv = configuration.buildEnv;

    if (buildEnv.isEmpty) {
      return child;
    }

    return Banner(
      message: buildEnv,
      location: BannerLocation.topStart,
      child: child,
      color: Colors.deepPurple,
    );
  }
}
