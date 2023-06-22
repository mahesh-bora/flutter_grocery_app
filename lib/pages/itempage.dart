import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottombar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                height: 350,
                  width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/2.png"),
                  ),
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                      color: Color(0XFF00A368),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF00A368),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10, bottom: 15, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Fruit Title",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),

                              ),
                              child: Icon(
                                CupertinoIcons.minus,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("01",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),

                              ),
                              child: Icon(
                                CupertinoIcons.plus,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
              ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 30,
                        ),
                        Text(
                          "4.8 (230)",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Padding(

                        padding: EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        // Text(
                        //     "About:",
                        // textAlign: TextAlign.left,
                        // style: TextStyle(
                        //   fontSize: 25,
                        //   color: Colors.white,
                        //   fontWeight: FontWeight.bold,
                        // ),
                        // ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("This is the description.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip .aedt crevhbj sasdf dfgh sdfg.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          // fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.justify,),
                      ],
                    ),),
                    Padding(
                        padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Text(
                          "Delivery Time:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),),
                      Spacer(),
                      Icon(
                        CupertinoIcons.clock,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 05,
                      ),
                      Text(
                        "20 Minutes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )],
                    ),)
            ],
          ),
        ),
  ],
      ),
    ),
    ),
      bottomNavigationBar: BottomBar(),
    );

  }
}
