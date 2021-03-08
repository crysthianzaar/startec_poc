import 'package:flutter/material.dart';

import 'components/ComponentesPadroes.dart';

class PerfilUsuario extends StatefulWidget {
  @override
  _PerfilUsuarioState createState() => _PerfilUsuarioState();
}

class _PerfilUsuarioState extends State<PerfilUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: corFundo,
        elevation: 0.1,
        title: Text(
          "Editar Perfil",
        ),
      ),
      bottomNavigationBar: BotoesInferiores(),
    );
  }
}
