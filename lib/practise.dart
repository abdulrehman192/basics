import 'package:flutter/material.dart';

class Practise extends StatelessWidget {
  const Practise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        title: Text('Practise', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: ()
          {
            print('Button Clicked');
          },
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: ()
            {
              print('Button Clicked');
            },
            icon: Icon(Icons.send),
          ),

        ],
        elevation: 15.0,
      ),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
            itemBuilder: (context, index)
            {
              return story(imageUrl: 'assets/images/user-1.jpg', username: 'Komal');
            }
        ),
      ),
    );
  }

  Widget story({String? imageUrl,String? username})
  {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: 100,
      height: 118,
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.orange,
            radius: 40,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 38,
              child: CircleAvatar(
                backgroundImage: AssetImage('$imageUrl'),
                radius: 35,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('$username', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
