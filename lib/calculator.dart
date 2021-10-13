
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String expression ='';
  String history = '';

  void clear(String text)
  {
    setState(() {
      expression = '0';
      history = '0';
    });
  }

  void numClick(String text)
  {
    setState(() {
      if(text == '%' || text == '/' || text == '*' || text == '-' || text == '+')
        {
          String newString = expression.substring(expression.length - 1);
          if(newString == '%' || newString == '/' || newString == '*' || newString == '-' || newString == '+')
            {
              text = '';
            }
        }

      if(text == '.')
      {
        if(expression.contains('.')){
          text = '';
        }
        if(expression == '0' || expression == '00')
          {
            text = '0' + text;
          }
      }

      if(expression == '0' || expression == '00')
        {
          expression = '';
        }
      expression = expression + text;
    });
  }

  void calculate(String text)
  {
    var p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double result = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      history = expression;
      expression = result.toString();
    });
  }

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
              child: Text('$expression', style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text('$history', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                calcButton(buttonText: 'C', callBack: clear),
                calcButton(buttonText: '%', callBack: numClick),
                calcButton(buttonText: 'x'),
                calcButton(buttonText: '/', callBack: numClick),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                calcButton(buttonText: '7', callBack: numClick),
                calcButton(buttonText: '8', callBack: numClick),
                calcButton(buttonText: '9', callBack: numClick),
                calcButton(buttonText: '*', callBack: numClick),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                calcButton(buttonText: '4', callBack: numClick),
                calcButton(buttonText: '5', callBack: numClick),
                calcButton(buttonText: '6', callBack: numClick),
                calcButton(buttonText: '-', callBack: numClick),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                calcButton(buttonText: '1', callBack: numClick),
                calcButton(buttonText: '2', callBack: numClick),
                calcButton(buttonText: '3', callBack: numClick),
                calcButton(buttonText: '+', callBack: numClick),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                calcButton(buttonText: '00', callBack: numClick),
                calcButton(buttonText: '0', callBack: numClick),
                calcButton(buttonText: '.', callBack: numClick),
                calcButton(buttonText: '=',callBack: calculate ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget calcButton({String? buttonText, Function? callBack})
  {
    return IconButton(
        onPressed: ()
      {
        callBack!(buttonText);
      }
      ,
        icon: Text('$buttonText',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
    );
  }
}
