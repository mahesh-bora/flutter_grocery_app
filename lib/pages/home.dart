import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/pages/items.dart';
import 'package:grocery_app/pages/popularitemswidget.dart';
import 'categories.dart';
import 'package:badges/badges.dart' as badges;


import 'categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00A368),
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView(
                padding: EdgeInsets.zero,
                children: [
                  Text("Hi")
                ],
              ),
          ListTile(
            leading: Icon(
              Icons.menu,
            ),
            onTap: (){
              Navigator.pop(context);
            },
          ),

            ],
          ),
        ),

      ),
      body: SafeArea(
        child: SingleChildScrollView(

          child: Column(
            // Custom App Bar
            children: [
              Container(
                padding: EdgeInsets.only(right: 20, left: 15, top: 10 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF00A368),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 2,
                          )
                        ]
                      ),
                      child: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.red,
                        ),
                        // backgroundColor: Colors.red,
                        badgeContent: Text('3'),
                        // padding: EdgeInsets.all(50),
                        child: InkWell(
                          onTap: (){},
                          child: Icon(CupertinoIcons.cart,
                            size: 30,
                            color: Colors.white,
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
              ),
              //Welcome text
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text("What do you want to buy?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search here...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),

              // Products Widgets
              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoriesWidget(),
                    PopularItemsWidget(),
                    ItemsWidget(),
                  ],
                ),
              ),
            ],
            
          ),
        )
      ),
    );
  }
}
