import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_avatar.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_name.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_date.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  final VoidCallback onTapPostData;
  final String groupPhotoSrc;
  final String groupName;
  final String postDate;
  final Widget postMenu;

  const PostHeader({
    Key? key,
    required this.onTapPostData,
    required this.groupPhotoSrc,
    required this.groupName,
    required this.postDate,
    required this.postMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: onTapPostData,
            child: Row(
              children: [
                GroupAvatar.fromPhotoSrc(photoSrc: groupPhotoSrc),
                SizedBox(width: appTheme.spacing.sValue),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GroupName(name: groupName),
                      SizedBox(height: appTheme.spacing.xsValue),
                      PostDate(date: postDate),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        postMenu,
      ],
    );
  }
}
