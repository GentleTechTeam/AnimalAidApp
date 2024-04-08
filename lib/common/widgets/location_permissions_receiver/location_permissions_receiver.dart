import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/services/geo_position_service.dart';
import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/widgets/location_permissions_receiver/views/no_access_to_location_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';

class LocationPermissionsReceiver extends StatefulWidget {
  final Widget child;
  final ValueChanged<bool> onResult;

  const LocationPermissionsReceiver({
    Key? key,
    required this.child,
    required this.onResult,
  }) : super(key: key);

  @override
  _LocationPermissionsReceiverState createState() =>
      _LocationPermissionsReceiverState();
}

class _LocationPermissionsReceiverState
    extends State<LocationPermissionsReceiver> with WidgetsBindingObserver {
  final NavigatorService _navigator = GetIt.I<NavigatorService>();
  bool _waitingForAppResume = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    beginPermissionReceiveProcess();
  }

  @override
  void dispose() {
    // ignore: avoid-ignoring-return-values
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed && _waitingForAppResume) {
      _waitingForAppResume = false;
      checkPermissionsAndExposeResult();
    }
  }

  Future<void> beginPermissionReceiveProcess() async {
    final hasAccessToLocation = await GeoPositionService.hasAccessToLocation();
    if (hasAccessToLocation) {
      exposeResult(permissionReceived: hasAccessToLocation);

      return;
    }
    final hasAccessToLocationAfterRequest =
        await GeoPositionService.requestPermissions();
    if (hasAccessToLocationAfterRequest) {
      exposeResult(permissionReceived: hasAccessToLocationAfterRequest);

      return;
    }
    await openNoAccessToLocationDialog();
  }

  Future<void> checkPermissionsAndExposeResult() async {
    final hasAccessToLocation = await GeoPositionService.hasAccessToLocation();
    if (hasAccessToLocation) {
      exposeResult(permissionReceived: hasAccessToLocation);

      return;
    }
    final hasAccessToLocationAfterRequest =
        await GeoPositionService.requestPermissions();
    exposeResult(permissionReceived: hasAccessToLocationAfterRequest);
  }

  Future<void> openNoAccessToLocationDialog() async {
    await showDialog<void>(
      context: context,
      builder: (_) => NoAccessToLocationDialog(
        onContinue: () => _navigator.pop<void>(context: context),
        onGoToSettings: _onGoToSettingsDialogCallback,
      ),
    );

    if (_waitingForAppResume) {
      return;
    }
    await checkPermissionsAndExposeResult();
  }

  void exposeResult({required bool permissionReceived}) {
    if (!permissionReceived) {
      EasyLoading.showToast(
        context.strings.locationAccessFailure,
        toastPosition: EasyLoadingToastPosition.bottom,
        dismissOnTap: true,
      );
    }
    widget.onResult(permissionReceived);
  }

  @override
  Widget build(BuildContext context) => widget.child;

  void _onGoToSettingsDialogCallback() {
    _waitingForAppResume = true;
    _navigator.pop<void>(context: context);
    GeoPositionService.openLocationSettings();
  }
}
