// import 'package:flutter/material.dart';
// import 'package:graduation_task/Login/View/login_view.dart';
// import 'package:graduation_task/ScanFAce/ScanFaceView.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       // themeMode: ThemeMode.light,
//       theme: ThemeData(
//         primaryTextTheme: TextTheme(
//           bodyText1: TextStyle(color: Colors.white), // Set text color to white
//           bodyText2: TextStyle(color: Colors.white), // Set text color to white
//           // You can add more styles as needed
//         ),
//         primarySwatch: Colors.blue,
//       ),
//       home: ScanFaceView(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:graduation_task/Login/View/login_view.dart';
import 'package:graduation_task/ScanFAce/ScanFaceView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white), // Set text color to white
          bodyText2: TextStyle(color: Colors.white), // Set text color to white
          // You can add more styles as needed
        ),
      ),
      home: LoginView(),
    );
  }
}
