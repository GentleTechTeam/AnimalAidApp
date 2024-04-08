import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:animal_aid_app/common/state/searchable_locations/searchable_locations_cubit.dart';
import 'package:animal_aid_app/common/state/searchable_locations/searchable_locations_state.dart';
import 'package:animal_aid_app/common/widgets/locations_search/search_app_bar/locations_search_app_bar.dart';
import 'package:animal_aid_app/common/widgets/locations_search/views/locations_search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationsSearchPage extends StatelessWidget {
  final ValueChanged<LocationData> onSelect;
  final VoidCallback onRemove;

  const LocationsSearchPage({
    Key? key,
    required this.onSelect,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<SearchableLocationsCubit>(
        create: (_) => SearchableLocationsCubit()
          ..getLocations(
            '',
            debounce: false,
          ),
        child: BlocBuilder<SearchableLocationsCubit, SearchableLocationsState>(
          builder: (context, state) {
            final cubit = context.watch<SearchableLocationsCubit>();

            return Scaffold(
              body: Column(
                children: [
                  LocationsSearchAppBar(
                    onQueryChanged: (query) => cubit.getLocations(
                      query,
                      debounce: query.isNotEmpty,
                    ),
                  ),
                  ListTile(
                    trailing: const Icon(Icons.location_off),
                    onTap: onRemove,
                    title: Text(context.strings.withoutLocation),
                  ),
                  const Divider(height: 0),
                  LocationsSearchResult(
                    loadingStatus: state.loadingStatus,
                    locations: state.locations,
                    onSelect: onSelect,
                  ),
                ],
              ),
            );
          },
        ),
      );
}
