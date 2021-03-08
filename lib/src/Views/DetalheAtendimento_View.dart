import 'package:flutter/material.dart';
import 'package:startec_poc/src/Views/components/ComponentesPadroes.dart';

class DetalheAtendimento extends StatefulWidget {
  @override
  _DetalheAtendimentoState createState() => _DetalheAtendimentoState();
}

class _DetalheAtendimentoState extends State<DetalheAtendimento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: corFundo,
        elevation: 0.1,
        title: Text(
          "Detalhes",
        ),
      ),
      body: Center(
        child: Text(
          "Detalhes do Projeto",
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BotoesInferiores(),
    );
  }
}
