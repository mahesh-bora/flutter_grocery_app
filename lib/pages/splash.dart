import 'package:flutter/material.dart';
import 'package:grocery_app/pages/home.dart';
import 'home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
            "assets/splash.png",
            height: 500,
              fit: BoxFit.cover,
          ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                  "Buy Fresh Groceries",
                style: TextStyle(
                  color: Color(0xFF00A368),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //sized boxzx
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, "loginscreen");
              },
              //for animation on container
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 80,vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF00A368),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
