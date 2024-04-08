import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:animal_aid_app/common/state/location/location_cubit.dart';
import 'package:animal_aid_app/common/state/location/location_state.dart';
import 'package:animal_aid_app/common/widgets/locations_search/locations_search.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed_location_control/views/list_location_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsFeedLocationControl extends StatelessWidget {
  const PostsFeedLocationControl({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<LocationCubit, LocationState>(builder: (context, state) {
        final locationCubit = BlocProvider.of<LocationCubit>(context);

        return LocationsSearch(
          onSelect: (locationData) => locationCubit.setLocation(
            Location(locationData: locationData),
          ),
          onRemove: locationCubit.removeLocation,
          controlBuilder: (context, goToOptions) => ListLocationControl(
            key: WidgetKeys.postsFeedLocationControl,
            isEmpty: !state.hasData,
            locationLabel:
                state.location?.locationData.label ?? context.strings.notSet,
            onEditLocation: goToOptions,
          ),
        );
      });
}
