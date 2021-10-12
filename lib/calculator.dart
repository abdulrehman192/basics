
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              child: Text('5000', style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text('153+78', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                calcButton(buttonText: 'C'),
                calcButton(buttonText: '%'),
                calcButton(buttonText: 'x'),
                calcButton(buttonText: '/'),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                calcButton(buttonText: '7'),
                calcButton(buttonText: '8'),
                calcButton(buttonText: '9'),
                calcButton(buttonText: '*'),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                calcButton(buttonText: '4'),
                calcButton(buttonText: '5'),
                calcButton(buttonText: '6'),
                calcButton(buttonText: '-'),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                calcButton(buttonText: '1'),
                calcButton(buttonText: '2'),
                calcButton(buttonText: '3'),
                calcButton(buttonText: '+'),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                calcButton(buttonText: '00'),
                calcButton(buttonText: '0'),
                calcButton(buttonText: '.'),
                calcButton(buttonText: '='),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget calcButton({String? buttonText})
  {
    return IconButton(
        onPressed: (){},
        icon: Text('$buttonText',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )
    );
  }
}
