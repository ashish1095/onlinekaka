import 'package:flutter/material.dart';
import 'package:onlinekaka/newscreen.dart';
import 'package:onlinekaka/splashpage.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  bool _isVisible = false;
  late bool newuser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    alreadylogin();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg1.jpg'), fit: BoxFit.cover)),
            child: Center(
                child: Container(
              // color: Colors.amber,
              height: 350,
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                  TextField(
                      controller: username_controller,
                      decoration: InputDecoration(
                        hintText: 'Username',
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      controller: password_controller,
                      obscureText: !_isVisible,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                              icon: _isVisible
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)))),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: () async {
                        String username = username_controller.text;
                        String password = password_controller.text;

                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString("username", "ashish");
                        prefs.setString("password", "1234");

                        if (username == prefs.getString("username") &&
                            password == prefs.getString("password")) {
                          // prefs.setBool("login", true);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext ctx) => NewScreen()));
                        }
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 15),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                          minimumSize: MaterialStateProperty.all(Size(170, 45)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(110, 10, 0, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext ctx) => Login()));
                      },
                      child: Text(
                        'Doesn\'t have an account? Signup',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            )),
          ),
        )));
  }

  Future<void> alreadylogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    newuser = prefs.getBool("login") ?? true;

    if (newuser == false) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext ctx) => Splashpage()));
    }
  }
}
