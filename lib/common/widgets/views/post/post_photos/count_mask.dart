import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class CountMask extends StatelessWidget {
  final Widget img;
  final int hiddenImagesCount;

  const CountMask({
    Key? key,
    required this.img,
    required this.hiddenImagesCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        img,
        Container(
          decoration: BoxDecoration(
            color: appTheme.colors.withShadowOpacity(appTheme.colors.black),
          ),
          child: Center(
            child: Text(
              '+$hiddenImagesCount',
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: appTheme.colors.white,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
