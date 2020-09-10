import 'package:flutter/material.dart';

class UIBaseView extends StatefulWidget {
  UIBaseView({Key key}) : super(key: key);

  @override
  _UIBaseViewState createState() => _UIBaseViewState();
}

class _UIBaseViewState extends State<UIBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: (){})
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white54,
        child: Text("Bottom Bar"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 300,
                  color: Colors.blueGrey,
                );
              });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
 
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 4.0,
          )
        ),
        child: Column(
          children: [
            TextField(),
            TextField(),
            TextField(),
            RaisedButton(
              onPressed: (){

            })
          ],
        ),
      ),
    );
  }
}
