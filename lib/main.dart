import 'package:flutter/material.dart';
import 'package:task3/Home_Screen.dart';
import 'package:task3/Login_Screen.dart';

import 'Splash_Screen.dart';

void main() {
  runApp( Myapp());
  Myapp app = Myapp();

}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TalabatScreen(),

    );
  }
}