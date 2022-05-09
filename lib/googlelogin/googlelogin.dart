import 'package:flutter/material.dart';

class GoogleLogin extends StatefulWidget {
  _GoogleLoginState createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Card(
          color: Colors.cyanAccent,
          child: Text(
            "Login",
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                child: Text(
                  "Welcome for Login With Google",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: const Size.fromRadius(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 35,
                      image: AssetImage("collection/googlelogo.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Sign Up Google"),
                  ],
                ),
                onPressed: () {

                  //Navigator.pushNamed(context, '/second');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
