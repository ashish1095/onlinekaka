import 'package:flutter/material.dart';
import 'package:onlinekaka/Login.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({Key? key}) : super(key: key);

  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (BuildContext ctx) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Image.asset(
            "assets/onlinekaka.jpg",
            width: MediaQuery.of(context).size.width * 0.5,
          ),
        ),
      ),
    );
  }
}
