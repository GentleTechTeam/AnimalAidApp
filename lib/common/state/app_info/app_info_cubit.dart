import 'package:animal_aid_app/common/services/app_info_service_mock.dart';
import 'package:animal_aid_app/common/state/app_info/app_info_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppInfoCubit extends Cubit<AppInfoState> {
  final _service = AppInfoServiceMock();

  AppInfoCubit() : super(AppInfoState.empty()) {
    _getAppInfo();
  }

  Future<void> _getAppInfo() async {
    final result = await _service.getAppInfo();

    emit(AppInfoState(
      version: result.version,
      supportEmail: result.supportEmail,
      privacyPolicyUrl: result.privacyPolicyUrl,
    ));
  }
}
