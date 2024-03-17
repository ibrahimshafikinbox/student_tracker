import 'package:flutter/material.dart';
import 'package:graduation_task/Login/View/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white), // Set text color to white
          bodyText2: TextStyle(color: Colors.white), // Set text color to white
        ),
      ),
      home: LoginView(),
    );
  }
}
