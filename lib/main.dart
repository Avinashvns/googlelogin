import 'package:flutter/material.dart';
import 'package:googlelogin/googlelogin/googlelogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:googlelogin/homepage.dart';


void main() async{
  {
    try{
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
    }
    catch(e){ }
  }
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => LessApp(),
      '/second': (context)=>GoogleLogin(),
      '/third':(context)=>HomePage(),
    },
  ));
}

class LessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Card(
          color: Colors.cyanAccent,
          child: Text("Google Login",style: TextStyle(fontSize: 30),),
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
                child: Text("Welcome",style: TextStyle(fontSize: 40),),
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
                    Text("Google Login"),
                  ],
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/second');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
