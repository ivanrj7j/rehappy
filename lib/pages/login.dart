import 'package:flutter/material.dart';
import '../modules/textInput.dart';
import 'profile.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "RehAPPy",
          style: TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(0, 0, 0, 0),
            Color.fromARGB(30, 9, 9, 9)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(30, 9, 9, 9),
            Color.fromARGB(255, 15, 15, 15),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputText(
              promopt: "Enter username",
              placeholder: "Username",
            ),
            InputText(
              promopt: "Enter password",
              placeholder: "Password",
              isPassword: true,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contenxt) => Menu()));
                },
                child: Text("Login/Register")),
          ],
        ),
      ),
    );
  }
}
