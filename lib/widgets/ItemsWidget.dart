import 'dart:html';

import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      // physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: 10,
          ),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 34, 104, 235),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "-50%",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  "images/1.png",
                  height: 120,
                  width: 120,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8),
              alignment: Alignment.centerLeft,
              child: Text(
                "Product Title",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 34, 104, 235),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Write Description of product",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 34, 104, 235),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp.350.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 34, 104, 235),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}