import 'package:FlutterileDenemeler/httpHello.dart';
import 'package:FlutterileDenemeler/views/anasayfa.dart';

import 'package:flutter/material.dart';

class TabbarView extends StatefulWidget {
  TabbarView({Key key}) : super(key: key);

  @override
  _TabbarViewState createState() => _TabbarViewState();
}

class _TabbarViewState extends State<TabbarView>  {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       bottomNavigationBar: SafeArea(
                child: TabBar(
           indicatorColor: Colors.deepOrange,
           labelColor: Colors.black,
              tabs: [
                Tab(icon: Icon(Icons.ac_unit)),
                Tab(icon: Icon(Icons.ac_unit)),
              ],
            ),
       ),
        body: TabBarView(
          children: [
            Anasayfa(),
            HttpHello(),
            

           ],
          ),
        ),
      );
  }

 
}
