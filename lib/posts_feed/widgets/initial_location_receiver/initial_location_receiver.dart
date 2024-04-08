import 'dart:async';

import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/preferences_values/shared_preferences_bool_value.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/shared_preferences_wrapper.dart';
import 'package:animal_aid_app/common/state/location/location_cubit.dart';
import 'package:animal_aid_app/common/widgets/location_permissions_receiver/location_permissions_receiver.dart';
import 'package:animal_aid_app/posts_feed/widgets/initial_location_receiver/views/suggest_acquire_location_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';

class InitialLocationReceiver extends StatefulWidget {
  final Widget child;

  const InitialLocationReceiver({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _InitialLocationReceiverState createState() =>
      _InitialLocationReceiverState();
}

class _InitialLocationReceiverState extends State<InitialLocationReceiver> {
  final NavigatorService _navigator = GetIt.I<NavigatorService>();
  bool _userWantsToRememberDecision = false;
  bool _shouldReceiveLocation = false;
  StreamSubscription? _locationCubitSubscription;
  final _locationReceiverDisabledPermanently =
      SharedPreferencesWrapper<SharedPreferencesBoolValue>(
    preferencesKey: 'location_receiver',
  );

  LocationCubit get locationCubit => BlocProvider.of<LocationCubit>(context);

  @override
  void initState() {
    super.initState();
    initLocationData();
    disableLocationReceiverIfLocationDataWasSet();
  }

  void disableLocationReceiverIfLocationDataWasSet() {
    _locationCubitSubscription = locationCubit.stream.listen(
      (locationState) async {
        if (locationState.hasData && !(await locationReceiverDisabled())) {
          await _locationReceiverDisabledPermanently.saveData(
            SharedPreferencesBoolValue(value: true),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _locationCubitSubscription?.cancel();
    super.dispose();
  }

  Future<bool> locationReceiverDisabled() async {
    final locationReceiverDisabled =
        await _locationReceiverDisabledPermanently.data;
    if (locationReceiverDisabled == null) {
      return false;
    }

    return locationReceiverDisabled.value;
  }

  Future<void> initLocationData() async {
    final result = await locationCubit.initFromSavedData();

    switch (result) {
      case LocationRestorationStatus.restored:
        return;
      case LocationRestorationStatus.error:
        {
          await EasyLoading.showError(
            context.strings.unableToRecoverLocationData,
          );

          return;
        }
      case LocationRestorationStatus.nothingToRestore:
        {
          if (!(await locationReceiverDisabled())) {
            openAcquireLocationDialog();
          }
        }
    }
  }

  void openAcquireLocationDialog() {
    showDialog<void>(
      context: context,
      builder: (_) => StatefulBuilder(
        builder: (_context, updateInternalDialogState) =>
            SuggestAcquireLocationDialog(
          onDisagree: closeDialogAndRememberDecisionIfUserWants,
          onAgree: _onAcquireLocationDialogAgreement,
          doNotAskAgainDecision: _userWantsToRememberDecision,
          onDoNotAskAgainChanged: (nextValue) => updateInternalDialogState(() {
            _userWantsToRememberDecision = nextValue;
          }),
        ),
      ),
    );
  }

  void closeDialogAndRememberDecisionIfUserWants() {
    _navigator.pop<void>(context: context);
    if (_userWantsToRememberDecision) {
      _locationReceiverDisabledPermanently
          .saveData(SharedPreferencesBoolValue(value: true));
    }
  }

  void loadLocationDataByDeviceCoordinates() {
    locationCubit.getLocationByDeviceCoordinates(
      onLocationObtainBegin: () => EasyLoading.show(
        status: context.strings.determiningApproxLocation,
        dismissOnTap: false,
      ),
      onError: notifyLocationReceiveError,
      onLoadLocationLabel: (label) {
        EasyLoading.showSuccess(
          context.strings.settlementEstablished(label),
          dismissOnTap: true,
        );
      },
    );
  }

  void notifyLocationReceiveError() {
    EasyLoading.showError(
      context.strings.failedToLocateError,
      dismissOnTap: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!_shouldReceiveLocation) {
      return widget.child;
    }

    return LocationPermissionsReceiver(
      child: widget.child,
      onResult: _onPermissionReceiverResult,
    );
  }

  void _onAcquireLocationDialogAgreement() {
    closeDialogAndRememberDecisionIfUserWants();
    setState(() {
      _shouldReceiveLocation = true;
    });
  }

  void _onPermissionReceiverResult(bool permissionsGranted) {
    if (permissionsGranted) {
      loadLocationDataByDeviceCoordinates();
    }
  }
}
