import 'package:flutter/material.dart';
import 'package:flutter_qldt_hust/routes.dart';
import 'package:flutter_qldt_hust/screens/sign_in/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HUST QLDT',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SignInScreen.routeName,
      routes: routes,
    );
  }
}

