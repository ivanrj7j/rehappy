import 'package:flutter/material.dart';
import 'package:rehappy/pages/Chat.dart';
import 'package:rehappy/pages/craeteCommunity.dart';
import 'package:rehappy/pages/login.dart';
import 'package:rehappy/pages/options.dart';
import 'pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RehAppy',
      home: LogIn(),
    );
  }
}
