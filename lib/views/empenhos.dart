import 'package:KataokaUI/extensions/createCard.dart';
import 'package:KataokaUI/widgets/drawer.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:flutter/material.dart';

class Empenhos extends StatefulWidget {
  Empenhos({Key key}) : super(key: key);

  @override
  _EmpenhosState createState() => _EmpenhosState();
}

class _EmpenhosState extends State<Empenhos> {
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
        title: Text("Empenhos"),
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
          createEmpenhoCard("Empenho 1", 200.00, context),
          createEmpenhoCard("Empenho 2", 900.00, context)
        ]),
      ),
    );
  }
}
