import 'package:animal_aid_app/common/state/location/location_state.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed_with_dynamic_filters/utils/extract_location_key.dart';

bool isLocationFilterChanged(
  LocationState state,
  LocationState nextState,
) {
  final currentLocationKey = extractLocationKey(state);
  final nextLocationKey = extractLocationKey(nextState);
  if (currentLocationKey != nextLocationKey) {
    return true;
  }

  return false;
}
