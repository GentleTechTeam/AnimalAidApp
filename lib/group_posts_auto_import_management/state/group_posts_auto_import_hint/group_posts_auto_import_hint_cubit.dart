import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/services/group_post_auto_import_service_mock.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/state/group_posts_auto_import_hint/group_posts_auto_import_hint_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupPostsAutoImportHintCubit
    extends Cubit<GroupPostsAutoImportHintState> {
  final _service = GroupPostAutoImportServiceMock();

  GroupPostsAutoImportHintCubit()
      : super(GroupPostsAutoImportHintState.empty()) {
    _getHint();
  }

  Future<void> _getHint() async {
    emit(state.rebuild((b) => b..loadingStatus = LoadingStatus.loading));

    final result = await _service.getAutoImportHint();

    if (result.failed) {
      emit(state.rebuild((b) => b..loadingStatus = LoadingStatus.error));

      return;
    }

    emit(
      GroupPostsAutoImportHintState((b) => b
        ..loadingStatus = LoadingStatus.done
        ..hint = result.hint),
    );
  }
}
