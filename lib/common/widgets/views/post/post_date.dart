import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostDate extends StatelessWidget {
  final DateTime _parsedDate;

  PostDate({
    Key? key,
    required String date,
  })  : _parsedDate = DateTime.parse(date).toLocal(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final differenceFromNowInDays =
        DateTime.now().difference(_parsedDate).inDays;
    final formattedDate = differenceFromNowInDays < 2
        ? timeago.format(_parsedDate, locale: Intl.systemLocale)
        : DateFormat('d MMMM H:mm').format(_parsedDate);

    return Text(
      formattedDate,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
