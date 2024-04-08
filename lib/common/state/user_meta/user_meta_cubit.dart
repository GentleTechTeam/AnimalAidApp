import 'package:animal_aid_app/common/services/user_meta_service_mock.dart';
import 'package:animal_aid_app/common/state/user_meta/user_meta_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserMetaCubit extends Cubit<UserMetaState> {
  final _service = UserMetaServiceMock();

  UserMetaCubit() : super(UserMetaState.empty()) {
    getUserMeta();
  }

  Future<void> getUserMeta() async {
    final result = await _service.getUserMeta();

    final isAdmin = result?.isAdmin ?? false;

    emit(UserMetaState(isAdmin: isAdmin));
  }
}
