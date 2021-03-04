import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:startec_poc/src/controllers/Atendimentos_API.dart';
import 'package:startec_poc/src/models/Atendimentos_Model.dart';

import 'components/ComponentesPadroes.dart';

class BuildListView extends StatefulWidget {
  @override
  _BuildListViewState createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  var projetos = new List<Projeto>();

  _getProjetos() {
    API.getUsers().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        projetos = lista.map((model) => Projeto.fromJson(model)).toList();
      });
    });
  }

  _BuildListViewState() {
    _getProjetos();
  }

  listaUsuarios() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 8.0,
      clipBehavior: Clip.antiAlias,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: corListaAtendimentos), // Cor do Card
        child: ListView.builder(
          itemCount: projetos.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Container(
                padding: EdgeInsets.only(right: 12.0),
                decoration: new BoxDecoration(
                    border: new Border(
                        right: new BorderSide(
                  width: 1.0,
                  color: Colors.white24,
                ))),
                child: Icon(Icons.assignment, color: Colors.white),
              ),
              title: Text(
                projetos[index].numeroAtendimento,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ), //Text(projetos[index].numeroAtendimento),
              subtitle: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Text(
                            projetos[index].solucao +
                                " \nEmpresa: " +
                                projetos[index].empresa +
                                "\nEtapa: " +
                                projetos[index].etapa,
                            style: TextStyle(fontSize: 15.0))),
                  )
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.keyboard_arrow_right,
                    color: Colors.white, size: 30.0),
                onPressed: () {},
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corFundo,
      appBar: meusAtendimentosAppBar,
      body: listaUsuarios(),
      bottomNavigationBar: botoesInferiores,
    );
  }
}
