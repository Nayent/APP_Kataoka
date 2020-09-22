import 'package:flutter/material.dart';

class FornecedorForm extends StatelessWidget {
  TextEditingController _nameFieldController = TextEditingController();
  TextEditingController _cnpjFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Fornecedor"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 32.0),
              child: TextField(
                controller: _nameFieldController,
                decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.white, fontSize: 18.0),
                textAlign: TextAlign.center,
                onSubmitted: (text) {},
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 32.0),
              child: TextField(
                controller: _cnpjFieldController,
                decoration: InputDecoration(
                  labelText: "CNPJ",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.white, fontSize: 18.0),
                textAlign: TextAlign.center,
                onSubmitted: (text) {},
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
            child: SizedBox(
              width: double.infinity,
              child: RaisedButton(
                  elevation: 10.0,
                  onPressed: () {},
                  child: Text(
                    "Adicionar novo fornecedor",
                    style: TextStyle(fontSize: 18.0),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
