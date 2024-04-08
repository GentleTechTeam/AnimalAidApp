import 'package:flutter/material.dart';

class GroupAvatar extends StatelessWidget {
  final ImageProvider groupPhotoProvider;

  const GroupAvatar({
    Key? key,
    required this.groupPhotoProvider,
  }) : super(key: key);

  static GroupAvatar fromPhotoSrc({required String photoSrc}) => GroupAvatar(
        groupPhotoProvider: NetworkImage(photoSrc),
      );

  @override
  Widget build(BuildContext context) => CircleAvatar(
        backgroundImage: groupPhotoProvider,
      );
}
