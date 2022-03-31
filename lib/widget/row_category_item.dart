import 'package:flutter/material.dart';

class RowCategoryItem extends StatelessWidget {
  final Color? clr;
  final String? title;
  final String? shoesCount;
  RowCategoryItem({
    this.clr,
    this.title,
    this.shoesCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: clr,
          ),
        ),
        Text(
          shoesCount!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
