import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insta Stories'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)
                  {
                    return story(imageUrl: 'assets/images/user-1.jpg',username: 'Hassan');
                  }
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index)
                  {
                      return customCard(
                        imageUrl: 'assets/images/user-1.jpg',
                        title: '${'Hassan'}',
                        subTitle: '$index',
                      );

                  }
              ),
            ),
          ],
        ),

      ),
    );
  }
  Widget customCard({String? title, String? subTitle, String? imageUrl, String? lastSeen})
  {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: ListTile(
        title: Text('$title'),
        subtitle: Text('$subTitle'),
        tileColor: Colors.white,
        leading: CircleAvatar(
          backgroundImage: AssetImage('$imageUrl'),
          radius: 25,
        ),
        trailing: Text('$lastSeen'),
      ),
    );
  }

  Widget story({String? imageUrl, String? username})
  {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: 80,
      height: 100,
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.orange,
            radius: 32,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 30,
              child: CircleAvatar(
                backgroundImage: AssetImage('$imageUrl'),
                radius: 28,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('$username'),
          ),
        ],
      ),
    );
  }
}
