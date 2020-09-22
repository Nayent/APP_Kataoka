import 'package:KataokaUI/extensions/createCard.dart';
import 'package:KataokaUI/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

import 'foms/fornecedorForm.dart';

class Fornecedores extends StatefulWidget {
  Fornecedores({Key key}) : super(key: key);

  @override
  _FornecedoresState createState() => _FornecedoresState();
}

class _FornecedoresState extends State<Fornecedores> {

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
        title: Text("Fornecedores"),
        centerTitle: true,
      ),
      drawer: CreateDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FornecedorForm()));
        },
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
            padding: EdgeInsets.all(16.0),
            child: SearchableDropdown.single(
              items: items,
              hint: "Procurar Fornecedor",
              onChanged: (value) {},
              isExpanded: true,
            ),
          ),
            createCard("Fornecedor 1", "123456"),
            createCard("jorge 2", "123456/0001"),
            createCard("porge 2", "123456/0001"),
            createCard("corge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001"),
            createCard("Jorge 2", "123456/0001")
          ],
        ),
      ),
    );
  }
}