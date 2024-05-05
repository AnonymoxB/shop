import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/widgets/HomeAppBar.dart';
import 'package:shop/widgets/CategoriesWidget.dart';
import 'package:shop/widgets/ItemsWidget.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // temporary height
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                //Search
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color.fromARGB(255, 34, 104, 235),
                      ),
                    ],
                  ),
                ),
                //Categories
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 34, 104, 235)),
                  ),
                ),
                //Categori Widgets
                CategoriesWidget(),

                //Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 34, 104, 235),
                    ),
                  ),
                ),
                //Items Widget
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.transparent,
      //   onTap: (index) {},
      //   height: 70,
      //   color: Color.fromARGB(255, 34, 104, 235),
      //   items: [
      //     Icon(
      //       Icons.home,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       CupertinoIcons.car_fill,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     Icon(
      //       Icons.list,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //   ],
      // ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Color.fromARGB(255, 34, 104, 235),
        height: 70,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
