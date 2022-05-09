import 'package:flutter/material.dart';
import 'package:googlelogin/googlelogin/googlelogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:googlelogin/googlelogin/googlesignin.dart';


class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? loginfo = "ok";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Card(
          color: Colors.cyanAccent,
          child: Text(
            "HomePage",
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
                  "Welcome in Home Page",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Text(GoogleLogin.loginfo!),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.pink,
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(GoogleLogin.logphoto!),
              ),
              onPressed: () async {
                try {
                  print("logout");
                  await RoomGoogleSignIn.doSignOut();
                  User? usern = await RoomGoogleSignIn.getUser();
                  if (usern == null) {
                    GoogleLogin.loginfo = "logout";
                    setState(() {});
                  }
                } catch (ex) {
                  print(ex);
                  GoogleLogin.loginfo = ex.toString();
                  setState(() {});
                }
                Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
