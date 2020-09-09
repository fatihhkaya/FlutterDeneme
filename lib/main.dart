import 'package:flutter/material.dart';
import 'views/anasayfa.dart';
import 'widgets/shadow.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fatih App',
      home: Scaffold(
        body: Anasayfa(),
       
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
    return OutlineButton(
            onPressed: () {},
        child: ShadowWidget(
                  child: Container(
                    height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green,Colors.blueAccent], stops: [0.2,0.7])
          ),

          ),
        ),
        
    );
  }
}