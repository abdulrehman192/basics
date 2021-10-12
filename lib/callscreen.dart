
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.blueGrey
                ),
                child: Icon(Icons.person,size: 70, color: Colors.white,),
              ),
              SizedBox(height: 30.0,),
              Text('03089098067',style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('00:00',style: TextStyle(fontSize: 18),),
              ),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.mic_off,size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Mute'),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.dialpad,size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Keypad'),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.volume_up_rounded,size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Speaker'),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.add_call,size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Add Call'),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.pause,size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Hold'),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.record_voice_over,size: 35,)
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Record'),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 100,),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.call_end,size: 35,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
