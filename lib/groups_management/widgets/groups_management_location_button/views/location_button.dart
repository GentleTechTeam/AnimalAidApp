import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/widgets/views/navigation_button_with_icon.dart';
import 'package:flutter/material.dart';

class LocationButton extends StatelessWidget {
  final String? locationLabel;
  final VoidCallback onPress;

  const LocationButton({
    Key? key,
    this.locationLabel,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => NavigationButtonWithIcon(
        icon: Icons.location_on_outlined,
        title: context.strings.location,
        subtitle: locationLabel ?? context.strings.notSet,
        onPress: onPress,
      );
}
