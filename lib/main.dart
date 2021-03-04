import 'package:flutter/material.dart';
import 'package:startec_poc/src/Views/Atendimentos_View.dart';

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
