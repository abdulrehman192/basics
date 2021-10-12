 import 'package:flutter/material.dart';

class WebPage extends StatelessWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu,color: Colors.black,),
        ),
        foregroundColor: Colors.black,
        title: Row(
          children: <Widget>[
            Container(
              width: 80,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Product'),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0)
                ),

              ),
            ),
            Container(
              width: 80,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Solutions'),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0)
                ),

              ),
            ),
            Container(
              width: 80,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Learn'),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0)
                ),

              ),
            ),
            Container(
              width: 80,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Pricing'),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0)
                ),

              ),
            ),
            Container(
              width: 90,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Resources'),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0)
                ),

              ),
            ),
          ],
        ),
        actions: <Widget>
        [
          ElevatedButton(
            onPressed: (){},
            child: Text('Log-In'),

          ),
          ElevatedButton(
              onPressed: (){},
              child: Text('Sign Up'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)
              ),
          ),

        ],
    )
    );
  }
}
