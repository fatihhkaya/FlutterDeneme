import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpHello extends StatefulWidget {
  HttpHello({Key key}) : super(key: key);

  @override
  _HttpHelloState createState() => _HttpHelloState();
}

class _HttpHelloState extends State<HttpHello> with AutomaticKeepAliveClientMixin{
  bool isHaveData;
  String data;

  @override
  void initState() {
  
    super.initState();
    //UserViewModel _userViewModel = UserViewModel(context, "asd", "asd");

    //print(_userViewModel.getFullUserName("name"));
  }

  Future getApiName() async {
   return (await http
            .get("https://flutterhttpdeneme.firebaseio.com/adsfa.json"))
        .body;


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: getApiName(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData)
                  return Text(json.decode(snapshot.data));
                else
                  Text("You have error.Look at api.");
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else
                return Text("You have error.Are you sure api ?");
            },
           
          ),
      ),
    );
  }
   @override

  bool get wantKeepAlive => true;
}
