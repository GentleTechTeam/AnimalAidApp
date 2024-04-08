import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/locations_search/locations_search_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

typedef ControlBuilder = Widget Function(
  BuildContext context,
  VoidCallback goToOptions,
);

class LocationsSearch extends StatelessWidget {
  final ControlBuilder controlBuilder;
  final ValueChanged<LocationData> onSelect;
  final VoidCallback onRemove;
  final NavigatorService _navigator = GetIt.I<NavigatorService>();

  LocationsSearch({
    Key? key,
    required this.controlBuilder,
    required this.onSelect,
    required this.onRemove,
  }) : super(key: key);

  void showModal(BuildContext context) {
    final appTheme = AppTheme.read(context);

    showGeneralDialog<void>(
      context: context,
      transitionDuration: appTheme.timing.semiFast,
      // ignore: prefer-trailing-comma
      transitionBuilder: (context, _anim1, _anim2, widget) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        final tween = Tween(begin: begin, end: end)
            .chain(CurveTween(curve: Curves.easeOut));
        final offsetAnimation = _anim1.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: widget,
        );
      },
      pageBuilder: (_ctx, _anim1, _anim2) => LocationsSearchPage(
        onSelect: (location) => _onTapLocationsSearchPageCallback(
          context: context,
          callback: () => onSelect(location),
        ),
        onRemove: () => _onTapLocationsSearchPageCallback(
          context: context,
          callback: onRemove,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) =>
      controlBuilder(context, () => showModal(context));

  void _onTapLocationsSearchPageCallback({
    required BuildContext context,
    required VoidCallback callback,
  }) {
    callback();
    _navigator.pop<void>(context: context);
  }
}
