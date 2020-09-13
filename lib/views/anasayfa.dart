import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> with AutomaticKeepAliveClientMixin {
  String _data = "";
  bool _isDark;

  @override
  void initState() {
    super.initState();
    _isDark = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: _isDark ? Colors.amberAccent : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(_data),
            Visibility(
              visible: _isDark,
              child: Text("dark$_isDark",
              style: TextStyle(
                color: Colors.black
              ),
              ),
              ),
            Center(
              child: RaisedButton(
                child: Icon(Icons.exit_to_app),
                onPressed: () {
                  setState(() {
                    _isDark = !_isDark;
                    _data = "developed By Fatih";
                  });
                },
              ),
            ),
          ],
        ));
  }
   @override

  bool get wantKeepAlive => true;
}
