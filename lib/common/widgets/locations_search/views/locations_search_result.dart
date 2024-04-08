import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

class LocationsSearchResult extends StatelessWidget {
  final LoadingStatus loadingStatus;
  final BuiltList<LocationData> locations;
  final ValueChanged<LocationData> onSelect;

  const LocationsSearchResult({
    Key? key,
    required this.loadingStatus,
    required this.locations,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
        child: ContentStateView(
          loadingStatus: loadingStatus,
          emptyDataMessage: context.strings.emptySearchDataMessage,
          errorMessage: context.strings.errorMessage,
          isEmpty: locations.isEmpty,
          builder: (_) => ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: locations.length,
            itemBuilder: (_, index) {
              final targetElement = locations[index];

              return ListTile(
                onTap: () => onSelect(targetElement),
                title: Text(targetElement.label),
              );
            },
          ),
        ),
      );
}
