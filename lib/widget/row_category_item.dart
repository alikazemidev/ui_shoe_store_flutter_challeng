import 'package:flutter/material.dart';

class RowCategoryItem extends StatelessWidget {
  final Color? clr;
  RowCategoryItem({this.clr});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lifestyle',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: clr,
          ),
        ),
        Text(
          '35 items',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}