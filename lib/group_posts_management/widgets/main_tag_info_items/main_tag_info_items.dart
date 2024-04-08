import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/state/main_tag_groups/main_tag_groups_cubit.dart';
import 'package:animal_aid_app/common/state/main_tag_groups/main_tag_groups_state.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:animal_aid_app/group_posts_management/widgets/main_tag_info_items/views/main_tag_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainTagInfoItems extends StatelessWidget {
  const MainTagInfoItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<MainTagGroupsCubit, MainTagGroupsState>(
        builder: (_, state) => ContentStateView(
          loadingStatus: state.loadingStatus,
          emptyDataMessage: context.strings.noFavoriteTags,
          errorMessage: context.strings.noTagsLoadedError,
          isEmpty: state.data.isEmpty,
          builder: (_) => Column(
            children: state.data
                .map((tagGroup) => MainTagInfoItem(
                      label: tagGroup.label,
                      tagKeys: tagGroup.tagKeys,
                    ))
                .toList(),
          ),
        ),
      );
}
