import 'package:flutter/material.dart';
import 'package:grocery_app/pages/categories.dart';
import 'package:grocery_app/pages/home.dart';
import 'package:grocery_app/pages/itempage.dart';
import 'package:grocery_app/pages/items.dart';
import 'package:grocery_app/pages/login.dart';
import 'package:grocery_app/pages/splash.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,

      child: Scaffold(

        body: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes:{
            "/": (context) => SplashScreen(),
            "loginscreen":(context)=> LoginScreen(),
            "homepage": (context) => HomePage(),
            "itemPage": (context) => ItemPage(),
            "categories":(context) => CategoriesWidget(),

          }
        ),
      ),
    );
  }
}
