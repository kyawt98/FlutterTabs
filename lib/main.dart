import 'package:flutter/material.dart';
import 'package:flutter_tab/tabs/first.dart';
import 'package:flutter_tab/tabs/second.dart';
import 'package:flutter_tab/tabs/three.dart';

void main() => runApp(
  MaterialApp(
    title: "Using Tabs",
    home: MyHome(),
  )
);

class MyHome extends StatefulWidget{
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }


  TabBar getTabBar(){
    return TabBar(
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.favorite),
        ),

        Tab(
          icon: Icon(Icons.adb),
        ),

        Tab(
          icon: Icon(Icons.airport_shuttle),
        )
      ],

      controller: controller,

    );
  }


  TabBarView getTabBarView(var tabs){
    return TabBarView(
      children: tabs,
      controller: controller,
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Using Tabs'),
        backgroundColor: Colors.blue,
        bottom: getTabBar(),
      ),
      body: getTabBarView(<Widget>[First(), Second(), Third()])
    );
  }


}


