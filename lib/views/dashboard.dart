import 'package:KataokaUI/widgets/drawer.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
        centerTitle: true,
      ),
      drawer: CreateDrawer(),
    );
  }
}
