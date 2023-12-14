import 'package:flutter/material.dart';

class MyTapbar extends StatelessWidget {
  const MyTapbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.table_chart_outlined,
          size: 30,
        ),
        Icon(
          Icons.movie_creation_outlined,
          size: 30,
        ),
        Icon(
          Icons.perm_contact_calendar_outlined,
          size: 30,
        ),
      ],
    );
  }
}
