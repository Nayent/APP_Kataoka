import 'package:flutter/material.dart';
import 'package:KataokaUI/views/produtos.dart';
import 'package:KataokaUI/extensions/extension.dart';

Widget createCard(String titulo, String cnpj) {
  return Padding(
    padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
    child: GestureDetector(
      onTap: null,
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Text('${titulo[0].toUpperCase()}'),
            radius: 20,
          ),
          title: Text(titulo.capitalize()),
          subtitle: Text("CNPJ: $cnpj"),
          trailing: IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.greenAccent,
          ),
        ),
      ),
    ),
  );
}

Widget createEmpenhoCard(String titulo, double saldo, BuildContext context) {
  return Padding(
    padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
    child: GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Produtos()));
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: Text('${titulo[0].toUpperCase()}'),
            radius: 20,
          ),
          title: Text(titulo.capitalize()),
          subtitle: Text("Saldo: R\$ $saldo"),
          trailing: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Arquivar"), value: 1),
              PopupMenuItem(
                child: Text("Editar"),
                value: 2,
              ),
              PopupMenuItem(
                child: Text("Deletar"),
                value: 2,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
