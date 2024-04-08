import 'package:animal_aid_app/common/dto/locations_search_text_field_style.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/locations_search/search_app_bar/search_text_field.dart';
import 'package:flutter/material.dart';

class LocationsSearchAppBar extends StatelessWidget {
  final void Function(String) onQueryChanged;

  const LocationsSearchAppBar({
    Key? key,
    required this.onQueryChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final greyColor = appTheme.colors.grey400;
    final blackColor = appTheme.colors.black;

    return AppBar(
      backgroundColor: greyColor,
      iconTheme: IconThemeData(color: blackColor),
      title: SearchTextField(
        onChanged: onQueryChanged,
        style: LocationsSearchTextFieldStyle(
          cursorColor: blackColor,
          fillColor: greyColor,
          hintStyle: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: appTheme.colors.grey500),
        ),
      ),
    );
  }
}
