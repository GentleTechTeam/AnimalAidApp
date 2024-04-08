import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class ListLocationControl extends StatefulWidget {
  final String locationLabel;
  final bool isEmpty;
  final VoidCallback? onEditLocation;

  const ListLocationControl({
    Key? key,
    required this.locationLabel,
    required this.isEmpty,
    this.onEditLocation,
  }) : super(key: key);

  @override
  _ListLocationControlState createState() => _ListLocationControlState();
}

class _ListLocationControlState extends State<ListLocationControl> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final theme = Theme.of(context);

    final iconSize = appTheme.sizes.mIconSize;
    final controlSize = iconSize / 0.6;
    final activeControlWidth = appTheme.sizes.listLocationControlActiveWidth;
    final borderRadius = BorderRadius.all(Radius.circular(controlSize / 2));
    final borderWith = appTheme.sizes.lBorderWidth;
    final width = _isActive ? activeControlWidth : controlSize;
    final mediumSpacing = appTheme.spacing.mValue;

    final animationDuration = appTheme.timing.semiFast;

    final fadedIconColor = theme.hintColor;
    final iconColor = widget.isEmpty ? fadedIconColor : appTheme.colors.active;
    final outlineColor = appTheme.colors.withWeakOpacity(theme.shadowColor);
    final inactiveIcon = widget.isEmpty
        ? Icons.location_off_outlined
        : Icons.location_on_outlined;

    return RawMaterialButton(
      shape: _isActive
          ? RoundedRectangleBorder(borderRadius: borderRadius)
          : const CircleBorder(),
      highlightColor: iconColor,
      onPressed: _isActive ? widget.onEditLocation : toggleLocationControl,
      child: AnimatedContainer(
        curve: Curves.easeOut,
        padding: _isActive
            ? EdgeInsets.symmetric(horizontal: mediumSpacing)
            : EdgeInsets.zero,
        duration: animationDuration,
        decoration: BoxDecoration(
          boxShadow: [appTheme.shadows.fab],
          color: appTheme.colors.withStrongOpacity(theme.cardColor),
          border: Border.fromBorderSide(
            BorderSide(
              color: outlineColor,
              width: borderWith,
            ),
          ),
          borderRadius: borderRadius,
        ),
        width: width,
        height: controlSize,
        child: _isActive
            ? Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: iconSize + mediumSpacing),
                    child: Text(
                      widget.locationLabel,
                      style: TextStyle(color: iconColor),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: IconButton(
                      key: WidgetKeys.postsFeedLocationControlMinimizer,
                      highlightColor: iconColor,
                      splashRadius: iconSize,
                      onPressed: toggleLocationControl,
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.edit_location_outlined,
                        size: iconSize,
                        color: iconColor,
                      ),
                    ),
                  ),
                ],
              )
            : Icon(
                inactiveIcon,
                color: iconColor,
                size: iconSize,
              ),
      ),
    );
  }

  void toggleLocationControl() => setState(() => _isActive = !_isActive);
}
