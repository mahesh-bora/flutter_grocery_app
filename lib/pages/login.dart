import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Future<FirebaseApp> _initializeFirebase() async{
  //   FirebaseApp firebaseApp = await FirebaseApp.initializeApp();
  //   return firebaseApp;
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Padding(padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                      "assets/cart.gif",
                  height: 350,
                  width: 350,),
                  SizedBox(
                    height: 5,
                  ),
                  Text("One Stop for All Your Groceries!", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF00A368)),),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                   decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     prefixIcon: Icon(Icons.person_outline),
                     labelText: "E-mail",
                   ),
                 ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      hintText: "Knock, Knock!",
                      suffixIcon: IconButton(
                        onPressed: null,
                        icon:Icon(Icons.remove_red_eye_sharp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                Align(alignment:Alignment.centerRight, child: TextButton(onPressed: (){}, child: Text("Forgot Password?",))),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, "homepage");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF00A368), // Background color
                    ),
                    child: Text("Login",),

                  ),
                ),
                ],
                  ),
              ),
            ),
          ),
        ));
  }
}
