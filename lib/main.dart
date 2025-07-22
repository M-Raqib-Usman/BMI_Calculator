import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/page1.dart';
import 'package:untitled1/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: splash_screen());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }
  var width=200.0;
  var height=100.0;
bool flag=true;
Color bgcolor=Colors.blueGrey;

        var wtcontroller = TextEditingController();
    var ftcontroller = TextEditingController();
    var incontroller = TextEditingController();
    var result = "";
    var bgclr=Colors.white54;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title,style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          color: bgclr,
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BMI',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.indigo),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: wtcontroller,
                    decoration: InputDecoration(
                      label: Text('Enter your weight'),
                      prefixIcon: Icon(Icons.line_weight),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: ftcontroller,
                    decoration: InputDecoration(
                      label: Text('Enter your height feets'),
                      prefixIcon: Icon(Icons.height),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: incontroller,
                    decoration: InputDecoration(
                      label: Text('Enter your height inches'),
                      prefixIcon: Icon(Icons.height),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var wt = wtcontroller.text.toString();
                        var ft = ftcontroller.text.toString();
                        var Inch = incontroller.text.toString();
                        if (wt != "" && ft != "" && Inch != "") {
                          var iwt = int.parse(wt);
                          var ift = int.parse(ft);
                          var iin = int.parse(Inch);

                          var tin = (ift * 12) + iin;
                          var tcm = tin * 2.54;
                          var tm = tcm / 100;
                          var bmi = iwt / (tm * tm);
                          var msg = "";

                          if (bmi > 25) {
                            msg = "You are overweight";
                            bgclr = Colors.deepOrangeAccent;
                          } else if (bmi < 18) {
                            msg = "You are Underweight";
                            bgclr = Colors.red;
                          } else {
                            msg = "You are Healthy";
                            bgclr = Colors.green;
                          }
                          setState(() {
                            result = "$msg \n Your BMI is ${bmi.toStringAsFixed(
                                2)}";
                          });
                        } else {
                          setState(() {
                            result = "Please fill all the required blanks!!!";
                          });
                        }
                      },
                      child: Text('CALCULATE')),

                  SizedBox(
                    height: 11,
                  ),

                  Text(
                    result,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),


                ],
              ),
            ),
          ),
        ),
      );
    }}