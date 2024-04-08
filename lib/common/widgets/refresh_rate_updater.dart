import 'package:animal_aid_app/common/services/display_mode_service.dart';
import 'package:flutter/material.dart';

class RefreshRateUpdater extends StatefulWidget {
  final Widget child;

  const RefreshRateUpdater({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _RefreshRateUpdaterState createState() => _RefreshRateUpdaterState();
}

class _RefreshRateUpdaterState extends State<RefreshRateUpdater>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      DisplayModeService.setDisplayMode();
    });
  }

  @override
  void dispose() {
    // ignore: avoid-ignoring-return-values
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      DisplayModeService.setDisplayMode();
    });
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
