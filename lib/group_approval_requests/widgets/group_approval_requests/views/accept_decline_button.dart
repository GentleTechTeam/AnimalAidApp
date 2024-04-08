import 'package:flutter/material.dart';

class AcceptDeclineButton extends StatelessWidget {
  final ValueChanged<bool> onChanged;

  const AcceptDeclineButton({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.check_circle_sharp,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () => onChanged(true),
          ),
          IconButton(
            icon: Icon(
              Icons.remove_circle_sharp,
              color: Theme.of(context).errorColor,
            ),
            onPressed: () => onChanged(false),
          ),
        ],
      );
}
