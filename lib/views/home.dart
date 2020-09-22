import 'package:KataokaUI/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DashBoard"),
          centerTitle: true,
        ),
        drawer: CreateDrawer(),
        body: DashBoard(),);
  }
}
