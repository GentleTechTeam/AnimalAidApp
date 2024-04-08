import 'package:flutter/material.dart';

const _maxLinesBeforeNameSpanning = 2;

class GroupName extends StatelessWidget {
  final String name;

  const GroupName({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        name,
        overflow: TextOverflow.ellipsis,
        maxLines: _maxLinesBeforeNameSpanning,
        style: Theme.of(context).textTheme.subtitle2,
      );
}
