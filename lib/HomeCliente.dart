import 'package:flutter/material.dart';

class HomeCliente extends StatefulWidget {
  @override
  _HomeClienteState createState() => _HomeClienteState();
}

class _HomeClienteState extends State<HomeCliente> {
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
      appBar: AppBar(title: Text("Bem-vindo(a) João Paulo", style: TextStyle(color: Colors.white, fontSize: 20.0),), backgroundColor: Colors.pink,),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 400,
                    child: TextField(
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          hintText: "Busque um prato ou restaurante",
                          fillColor: Colors.white70),
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),),
                  ButtonTheme(
                    minWidth: 40.0,
                    height: 40.0,
                    child: RaisedButton(onPressed: ()=> print("Confirmar"),
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.white)),
                      child: Text("",
                        style: TextStyle(color: Colors.white, fontSize: 15), ),
                      color: Colors.pink,
                    ),
                  ),
                ],

            ),
            Padding(padding: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                caixas("Restaurantes"),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),),
                caixas("Categorias"),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                caixas("Mais pedidos"),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),),
                caixas("Restaurantes populares"),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                caixas("Entrega grátis"),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),),
                caixas("Entrega rápida"),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                caixas("Promoções"),
                Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),),
                caixas("Histórico de pedidos"),
              ],
            ),
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}
