import 'package:KataokaUI/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class Pedidos extends StatefulWidget {
  Pedidos({Key key}) : super(key: key);

  @override
  _PedidosState createState() => _PedidosState();
}

class _PedidosState extends State<Pedidos> {
  final List<DropdownMenuItem> items = [
    DropdownMenuItem(
      child: Text("Brazil"),
      value: "Brazil",
    ),
    DropdownMenuItem(child: Text("Portugal"), value: "Portugal"),
    DropdownMenuItem(child: Text("Italia")),
    DropdownMenuItem(child: Text("Alemanha")),
    DropdownMenuItem(child: Text("Peru")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pedidos"),
          centerTitle: true,
        ),
        drawer: CreateDrawer(),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: SearchableDropdown.single(
              items: items,
              hint: "Selecione um empenho",
              onChanged: (value) {},
              isExpanded: true,
            ),
          ),
        ])));
  }
}
