import 'package:flutter/material.dart';

class CategoryshoeItem extends StatelessWidget {
  const CategoryshoeItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0XffF1F4FF), borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nikewaffle',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'One SE',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Image.asset(
            'images/shoe.png',
            width: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$159',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              // *arrow icon
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade400,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    Icons.arrow_forward_outlined,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
