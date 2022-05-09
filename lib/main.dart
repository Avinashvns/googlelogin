import 'package:flutter/material.dart';
//import 'package:googlelogin/googlelogin/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => LessApp(),
      //'/second': (context)=>GoogleLogin(),
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
                    Image(
                      height: 35,
                      image: AssetImage("collection/googlelogo.png"),
                    ),
                    SizedBox(width: 20,),
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
