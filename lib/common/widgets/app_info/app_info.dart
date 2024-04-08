import 'package:animal_aid_app/common/state/app_info/app_info_cubit.dart';
import 'package:animal_aid_app/common/state/app_info/app_info_state.dart';
import 'package:animal_aid_app/common/widgets/app_info/views/app_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<AppInfoCubit, AppInfoState>(
        builder: (context, appInfo) => AppInfoView(appInfo: appInfo),
      );
}
