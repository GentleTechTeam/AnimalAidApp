import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/services/main_tag_groups_service_mock.dart';
import 'package:animal_aid_app/common/state/main_tag_groups/main_tag_groups_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainTagGroupsCubit extends Cubit<MainTagGroupsState> {
  final _service = MainTagGroupsServiceMock();

  MainTagGroupsCubit() : super(MainTagGroupsState.empty()) {
    _getData();
  }

  Future<void> _getData() async {
    emit(state.rebuild((b) => b..loadingStatus = LoadingStatus.loading));

    final result = await _service.getData();

    if (result.failed) {
      emit(state.rebuild((b) => b..loadingStatus = LoadingStatus.error));

      return;
    }

    emit(
      MainTagGroupsState((b) => b
        ..loadingStatus = LoadingStatus.done
        ..data = result.data.toBuilder()),
    );
  }
}
