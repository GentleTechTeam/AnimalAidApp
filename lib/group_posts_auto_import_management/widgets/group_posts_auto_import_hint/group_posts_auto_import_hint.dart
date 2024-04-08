import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:animal_aid_app/common/widgets/views/hint.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/state/group_posts_auto_import_hint/group_posts_auto_import_hint_cubit.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/state/group_posts_auto_import_hint/group_posts_auto_import_hint_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupPostsAutoImportHint extends StatelessWidget {
  const GroupPostsAutoImportHint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocProvider<GroupPostsAutoImportHintCubit>(
        create: (_) => GroupPostsAutoImportHintCubit(),
        child: BlocBuilder<GroupPostsAutoImportHintCubit,
            GroupPostsAutoImportHintState>(
          builder: (_, state) => ContentStateView(
            loadingStatus: state.loadingStatus,
            emptyDataMessage: '',
            errorMessage: context.strings.hintError,
            isEmpty: state.hint.isEmpty,
            builder: (_) => Hint(text: state.hint),
          ),
        ),
      );
}
