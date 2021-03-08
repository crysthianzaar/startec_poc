import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startec_poc/src/repository/Atendimentos_API.dart';
import 'package:startec_poc/src/models/Atendimentos_Model.dart';

import 'components/ComponentesPadroes.dart';

class BuildMeusAtendimentos extends StatefulWidget {
  @override
  _BuildMeusAtendimentosState createState() => _BuildMeusAtendimentosState();
}

class _BuildMeusAtendimentosState extends State<BuildMeusAtendimentos> {
  var atendimentos = new List<Atendimento>();

  _getAtendimentos() {
    API.getUsers().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        atendimentos =
            lista.map((model) => Atendimento.fromJson(model)).toList();
      });
    });
  }

  _BuildMeusAtendimentosState() {
    _getAtendimentos();
  }

  listaAtendimentos() {
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
          itemCount: atendimentos.length,
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
                atendimentos[index].numeroAtendimento,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ), //Text(projetos[index].numeroAtendimento),
              subtitle: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          atendimentos[index].solucao,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Text(atendimentos[index].empresa,
                          style: TextStyle(fontSize: 15.0)),
                      Padding(
                        padding: new EdgeInsets.all(3.0),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 5, color: Colors.green),
                            ),
                            child: Text(atendimentos[index].etapa,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  backgroundColor: Colors.green,
                                )),
                          )
                          // Align however you like (i.e .centerRight, centerLeft)
                          ),
                    ]),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.keyboard_arrow_right,
                    color: Colors.white, size: 30.0),
                onPressed: () {
                  Navigator.of(context).pushNamed('/detalhes');
                },
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/detalhes');
              },
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
      body: listaAtendimentos(),
      bottomNavigationBar: BotoesInferiores(),
    );
  }
}
