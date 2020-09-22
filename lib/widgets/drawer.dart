import 'package:KataokaUI/views/dashboard.dart';
import 'package:KataokaUI/views/empenhos.dart';
import 'package:KataokaUI/views/fornecedores.dart';
import 'package:KataokaUI/views/pedidos.dart';
import 'package:KataokaUI/views/produtos.dart';
import 'package:flutter/material.dart';

class CreateDrawer extends StatelessWidget {
  const CreateDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: Image.asset(
            'assets/logo4_transparent.png',
            fit: BoxFit.fitWidth,
          )),
          ListTile(
            title: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child: Icon(Icons.dashboard),
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(fontSize: 18.0),
                )
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => DashBoard()));
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child: Icon(Icons.group),
                ),
                Text(
                  "Fornecedores",
                  style: TextStyle(fontSize: 18.0),
                )
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Fornecedores()));
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child: Icon(Icons.wysiwyg),
                ),
                Text(
                  "Empenhos",
                  style: TextStyle(fontSize: 18.0),
                )
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Empenhos()));
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child: Icon(Icons.assignment),
                ),
                Text(
                  "Pedidos",
                  style: TextStyle(fontSize: 18.0),
                )
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Pedidos()));
            },
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 24.0),
                  child: Icon(Icons.restaurant),
                ),
                Text(
                  "Produtos",
                  style: TextStyle(fontSize: 18.0),
                )
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Produtos()));
            },
          ),
        ],
      ),
    );
  }
}
