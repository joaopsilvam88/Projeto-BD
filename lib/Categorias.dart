import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  String nomeRest = "Tropical Bar";

  Widget caixas(String nome) {
    return Container(
      width: 200,
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
      ),
      child: Text("$nome", style: TextStyle(color: Colors.pink, fontSize: 15.0, fontWeight: FontWeight.bold),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categorias", style: TextStyle(color: Colors.white, fontSize: 20.0),), backgroundColor: Colors.pink,),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(0.0, 90.0, 0.0, 0.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                caixas("Caseira"),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),),
                caixas("Sanduíches"),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                caixas("Pizza"),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),),
                caixas("Saudável"),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                caixas("Bebidas"),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),),
                caixas("Oriental"),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                caixas("Salgados"),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),),
                caixas("Sopas"),
              ],
            ),
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}
