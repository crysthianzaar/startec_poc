import 'package:flutter/material.dart';

const corFundo = Color.fromRGBO(65, 105, 225, 1); // Define a Cor de Fundo
const corListaAtendimentos = Color.fromRGBO(104, 175, 255, 1.0);

// AppBar de Meus Atendimentos
final meusAtendimentosAppBar = AppBar(
  elevation: 0.1,
  backgroundColor: corFundo,
  title: Text("Meus Atendimentos"),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    )
  ],
);

// Botões Inferiores
final botoesInferiores = Container(
  height: 55.0,
  child: BottomAppBar(
    color: corFundo,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.assignment, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.notifications_active_sharp, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.account_circle, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.logout, color: Colors.white),
          onPressed: () {},
        )
      ],
    ),
  ),
);
