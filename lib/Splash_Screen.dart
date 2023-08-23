import 'package:flutter/material.dart';
import 'package:task3/Home_Screen.dart';
import 'package:task3/Login_Screen.dart';

class TalabatScreen extends StatefulWidget {
  const TalabatScreen({super.key});

  @override
  State<TalabatScreen> createState() => _TalabatScreenState();
}

class _TalabatScreenState extends State<TalabatScreen> {
  @override
  void initState(){
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return LoginScreen();
      }));

    });
    super.initState();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("talabat",style: TextStyle(
              fontSize: 70.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,

            ),),
          ],
        ),
      ),
    );
  }
}
