import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: Center(child: Text('Hello World')),
        ),
      ),

    );
  }
}
