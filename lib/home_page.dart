import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>
{
  var num1 = 0,num2 = 0,ans = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAdd()
  {
    setState(() {
          num1 = int.parse(t1.text);
          num2 = int.parse(t2.text);
          ans  = num1 + num2;
        });
  }
  void dosub()
  {
    setState(() {
          num1 = int.parse(t1.text);
          num2 = int.parse(t2.text);
          ans = num1 - num2;
        });
  }
  void domul()
  {
    setState(() {
          num1 = int.parse(t1.text);
          num2 = int.parse(t2.text);
          ans  = num1 * num2;
        });
  }
  void dodiv()
  {
    setState(() {
          num1 = int.parse(t1.text);
          num2 = int.parse(t2.text);
          ans = num1 ~/ num2;
        });
  }
  void doclear()
  {
    setState(() {
          t1.text = "0";
          t2.text = "0";
          ans = 0;
        });
  }
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new SingleChildScrollView(
        padding: new EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              "output: $ans",
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "enter a number 1"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "enter a number 2"
              ),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: doAdd
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.greenAccent,
                  onPressed: dosub
                )
              ],
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*"),
                  color: Colors.greenAccent,
                  onPressed: domul,
                ),
                new MaterialButton(
                  child: new Text("%"),
                  color: Colors.greenAccent,
                  onPressed: dodiv,
                )
              ],
            ),
            new Padding(
              padding: EdgeInsets.all(20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("clear"),
                  color: Colors.greenAccent,
                  onPressed: doclear,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}