import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:startec_poc/api.dart';
import 'package:startec_poc/projeto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meus Atendimentos",
      home: BuildListView(),
    );
  }
}

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
    return ListView.builder(
      itemCount: projetos.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(projetos[index].numeroAtendimento),
          subtitle: Text(
              projetos[index].solucao +
                  " \nEmpresa: " +
                  projetos[index].empresa +
                  "\nEtapa: " +
                  projetos[index].etapa,
              style: TextStyle(fontSize: 15.0)),
          trailing: Icon(Icons.add_box_outlined),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Meus Atendimentos")),
        body: listaUsuarios());
  }
}

/*
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Meus Atendimentos", /*textAlign: TextAlign.center*/
          ),
        ),
        leading: IconButton(
          icon: new Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: ListView(
          children: const <Widget>[
            Card(
              child: ListTile(
                title: Text("Nº Atendimento: 00155/2020"),
                subtitle: Text(
                    "Identidade Visual \nEmpresa: Rancho do Peixe LTDA - ME \nEtapa: Concluída",
                    style: TextStyle(fontSize: 15.0)),
                trailing: Icon(Icons.add_box_outlined),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Nº Atendimento: 00170/2020"),
                subtitle: Text(
                  "FIV -  Fertilização In Vitro \nEmpresa: Rancho do Peixe LTDA - ME \nEtapa: Concluída",
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Icon(Icons.add_box_outlined),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Nº Atendimento: 00200/2020"),
                subtitle: Text(
                  "Mídias Digitais \nEmpresa: Rancho do Peixe LTDA - ME \nEtapa: Aguardando Início",
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Icon(
                  Icons.add_box_outlined,
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Nº Atendimento: 00202/2020"),
                subtitle: Text(
                  "Desenvolvimento de Websites \nEmpresa: Rancho do Peixe LTDA - ME \nEtapa: Em Execução",
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Icon(
                  Icons.add_box_outlined,
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Nº Atendimento: 00005/2021"),
                subtitle: Text(
                  "Identidade Visual \nEmpresa: Rancho do Peixe LTDA - ME \nEtapa: Em Execução",
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Icon(Icons.add_box_outlined),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Nº Atendimento: 00011/2021"),
                subtitle: Text(
                  "Mídias Digitais \nEmpresa: Rancho do Peixe LTDA - ME \nEtapa: Em Execução",
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Icon(Icons.add_box_outlined),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Nº Atendimento: 00015/2021"),
                subtitle: Text(
                  "Mídias Digitais \nEmpresa: Rancho do Peixe LTDA - ME \nEtapa: Aguardando Início",
                  style: TextStyle(fontSize: 15.0),
                ),
                trailing: Icon(
                  Icons.add_box_outlined,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: new Icon(Icons.search),
      ),
    ));
  }
}
*/
