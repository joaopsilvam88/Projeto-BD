import 'package:flutter/material.dart';
import 'package:projeto_bd/Descricao.dart';
import 'package:projeto_bd/HomeRestaurante.dart';
import 'package:projeto_bd/HomeRestaurante.dart';
import 'package:projeto_bd/MaisPedidos.dart';
import 'package:projeto_bd/TelaLogin.dart';
import 'package:projeto_bd/Pratos.dart';
import 'package:projeto_bd/HistoricoPedidos.dart';
import 'package:projeto_bd/Estatisticas.dart';
import 'package:projeto_bd/DadosRestaurante.dart';
import 'package:projeto_bd/HomeCliente.dart';
import 'package:projeto_bd/ListaRestaurantes.dart';
import 'package:projeto_bd/Categorias.dart';
import 'package:projeto_bd/Populares.dart';
import 'package:projeto_bd/PesquisaRestaurante.dart';
import 'package:projeto_bd/DadosPrato.dart';
import 'package:projeto_bd/Sacola.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Projeto BD",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Sacola(),
    );
  }
}
