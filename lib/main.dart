import 'package:flutter/material.dart';
import 'package:projeto_bd/HomeRestaurante.dart';
import 'package:projeto_bd/HomeRestaurante.dart';
import 'package:projeto_bd/TelaLogin.dart';
import 'package:projeto_bd/Pratos.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Projeto BD",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Pratos(),
    );
  }
}
