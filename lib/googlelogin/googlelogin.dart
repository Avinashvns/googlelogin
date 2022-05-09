import 'package:flutter/material.dart';
import 'package:googlelogin/googlelogin/googlesignin.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GoogleLogin extends StatefulWidget {
  static String? loginfo="ok";
  static String? logphoto="ok";
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
            ElevatedButton(
              child: Text("Google Login"),
              onPressed: ()async{
                try{
                  print("one");
                  await RoomGoogleSignIn.doSignIn();
                  print("two");
                  User? usern=await RoomGoogleSignIn.getUser();
                  print("three");
                  GoogleLogin.loginfo=usern!.displayName;
                  GoogleLogin.logphoto=usern.photoURL;
                  setState(() {
                    print("State 4");
                  });

                }
                catch(ex)
                {
                  print(ex);
                  GoogleLogin.loginfo=ex.toString();
                  setState(() {

                  });
                }
                Navigator.pushNamed(context, '/third');
              },

            ),

          ],
        ),
      ),
    );
  }
}