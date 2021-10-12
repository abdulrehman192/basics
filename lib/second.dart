import 'package:flutter/material.dart';

class Seconds extends StatelessWidget {
  const Seconds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              // SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.red
                ),
                child: Icon(Icons.home,size: 70, color: Colors.white,),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.blue
                ),
                child: Icon(Icons.person,size: 70, color: Colors.white,),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.blue
                    ),
                    child: Icon(Icons.person,size: 70, color: Colors.white,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.blue
                    ),
                    child: Icon(Icons.person,size: 70, color: Colors.white,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.blue
                    ),
                    child: Icon(Icons.person,size: 70, color: Colors.white,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.blue
                    ),
                    child: Icon(Icons.person,size: 70, color: Colors.white,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.blue
                    ),
                    child: Icon(Icons.person,size: 70, color: Colors.white,),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
