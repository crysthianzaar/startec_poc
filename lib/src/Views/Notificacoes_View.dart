import 'package:flutter/material.dart';
import 'components/ComponentesPadroes.dart';

class NotificacoesAtendimentos extends StatefulWidget {
  @override
  _NotificacoesAtendimentosState createState() =>
      _NotificacoesAtendimentosState();
}

class _NotificacoesAtendimentosState extends State<NotificacoesAtendimentos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: corFundo,
        elevation: 0.1,
        title: Text(
          "Notificações",
        ),
      ),
      body: Center(
        child: Text("Notificações dos Atendimentos"),
      ),
      bottomNavigationBar: BotoesInferiores(),
    );
  }
}
