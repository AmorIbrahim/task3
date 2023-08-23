import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  String? title;
   Empty({super.key,this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(title!) ),
      body: Center(
          child: Text(title!,style: TextStyle(fontSize: 20),)
      ),
    );
  }
}
