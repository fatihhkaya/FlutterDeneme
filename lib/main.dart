import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Center(child: Buttonn()),
      ),
    );
  }
}



class Deneme extends StatelessWidget {
  const Deneme({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Git",
        style: const TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.bold,
          fontFamily: "IndieFlower",
          fontStyle: FontStyle.italic,
          fontSize: 30
        ),
      ),
    );
  }
}

class Buttonn extends StatelessWidget {
  const Buttonn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {},
        child: Text("deneme"),
        //color: Colors.black,
        textColor: Colors.greenAccent,
        
        )
    );
  }
}