import 'package:flutter/material.dart';
import 'package:startec_poc/src/Views/Atendimentos_View.dart';
import 'package:startec_poc/src/Views/DetalheAtendimento_View.dart';
import 'package:startec_poc/src/Views/Notificacoes_View.dart';
import 'package:startec_poc/src/Views/PerfilUsuario_View.dart';

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meus Atendimentos",
      initialRoute: '/',
      routes: {
        '/': (context) => BuildMeusAtendimentos(),
        '/detalhes': (context) => DetalheAtendimento(),
        '/notificacao': (context) => NotificacoesAtendimentos(),
        '/editarperfil': (context) => PerfilUsuario(),
      },
    );
  }
}
