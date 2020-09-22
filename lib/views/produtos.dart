import 'package:KataokaUI/widgets/drawer.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

class Produtos extends StatefulWidget {
  Produtos({Key key}) : super(key: key);

  @override
  _ProdutosState createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  TextEditingController _dropDownFieldController = TextEditingController();

  final List<DropdownMenuItem> items = [
    DropdownMenuItem(child: Text("Brazil"), value: "Brazil",),
    DropdownMenuItem(child: Text("Portugal"), value: "Portugal"),
    DropdownMenuItem(child: Text("Italia")),
    DropdownMenuItem(child: Text("Alemanha")),
    DropdownMenuItem(child: Text("Peru")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Produtos"),
          centerTitle: true,
        ),
        drawer: CreateDrawer(),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: SearchableDropdown.single(
              items: items,
              hint: "Selecione um fornecedor",
              onChanged: (value) {},
              isExpanded: true,
            ),
          ),
        ])));
  }
}
