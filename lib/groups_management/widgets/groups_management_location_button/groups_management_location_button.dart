import 'package:animal_aid_app/common/dto/operation_status_handler.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/state/user_controlled_groups/user_controlled_groups_cubit.dart';
import 'package:animal_aid_app/common/state/user_controlled_groups/user_controlled_groups_state.dart';
import 'package:animal_aid_app/common/widgets/locations_search/locations_search.dart';
import 'package:animal_aid_app/groups_management/widgets/groups_management_location_button/views/location_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class GroupsManagementLocationButton extends StatelessWidget {
  final int groupIndex;

  const GroupsManagementLocationButton({
    Key? key,
    required this.groupIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final changeLocationOperationStatusHandler = OperationStatusHandler(
      onLoading: () => EasyLoading.show(
        status: context.strings.changingGroupLocation,
      ),
      onSuccess: () => EasyLoading.dismiss(),
      onError: () => EasyLoading.showError(
        context.strings.changingLocationFailure,
      ),
    );

    return BlocBuilder<UserControlledGroupsCubit, UserControlledGroupsState>(
      builder: (context, state) {
        final userControlledGroupsCubit =
            BlocProvider.of<UserControlledGroupsCubit>(context);
        final targetGroup = state.data[groupIndex];

        return LocationsSearch(
          controlBuilder: (context, goToLocationOptions) => LocationButton(
            locationLabel: targetGroup.locationLabel,
            onPress: goToLocationOptions,
          ),
          onSelect: (targetLocationData) =>
              userControlledGroupsCubit.sendChangeLocationReq(
            groupId: targetGroup.id,
            locationKey: targetLocationData.key,
            operationStatusHandler: changeLocationOperationStatusHandler,
          ),
          onRemove: () => userControlledGroupsCubit.sendChangeLocationReq(
            groupId: targetGroup.id,
            operationStatusHandler: changeLocationOperationStatusHandler,
          ),
        );
      },
    );
  }
}
