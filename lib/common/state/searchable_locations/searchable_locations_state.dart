import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:built_collection/built_collection.dart';

class SearchableLocationsState {
  final LoadingStatus loadingStatus;
  final BuiltList<LocationData> locations;

  SearchableLocationsState._({
    required this.loadingStatus,
    required this.locations,
  });

  factory SearchableLocationsState.initial() => SearchableLocationsState._(
        loadingStatus: LoadingStatus.never,
        locations: BuiltList(),
      );

  SearchableLocationsState copyWith({
    LoadingStatus? loadingStatus,
    BuiltList<LocationData>? locations,
  }) =>
      SearchableLocationsState._(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        locations: locations ?? this.locations,
      );
}
