import 'package:flutter/material.dart';

class PesquisaRestaurante extends StatefulWidget {
  @override
  _PesquisaRestauranteState createState() => _PesquisaRestauranteState();
}

class _PesquisaRestauranteState extends State<PesquisaRestaurante> {
  String nomeRest = "Tropical Bar";

  Widget item(String nome, int cor){
    return Container(
      width: 120,
      height: 60,
      color: Colors.pink[cor],
      child: Center(
        child: Text('Pizzas', style: TextStyle(color: Colors.pink, fontSize: 20),),
      ),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
    );
  }

  Widget caixa(String nome, int cor){
    return Container(
      width: 500,
      height: 160,
      color: Colors.pink[cor],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Pizza M - Frango com Cheddar'),
            subtitle: Text('25,00 R\$'),
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('Verificar'),
                onPressed: () { print('$nome');},
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bem-vindo(a) ao Tropical Bar.", style: TextStyle(color: Colors.white, fontSize: 20.0),), backgroundColor: Colors.pink,),
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
                        hintText: "Busque um prato",
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
            Padding(padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),),
            Container(
                width: 600,
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    item("aa", 1),
                    item("aa", 1),
                    item("aa", 1),
                    item("aa", 1),
                    item("aa", 1),
                    item("aa", 1),
                    item("aa", 1),
                    item("aa", 1),
                  ],
                )
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              width: 580,
              height: 730,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Pizzas", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.bold),),
                        ]
                    ),
                  ),
                  Container(
                    width: 550,
                    height: 300,
                    child: Container(
                        width: 400,
                        height: 240,
                        child: ListView(
                          padding: const EdgeInsets.all(8),
                          children: <Widget>[
                            caixa(("aa"), 500),
                            caixa(("aa"), 400),
                            caixa(("aa"), 300),
                            FloatingActionButton(
                              onPressed: ()=> print("AAA"),
                              tooltip: 'Increment',
                              child: Icon(Icons.add),
                              backgroundColor: Colors.pink,
                            ),
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                    child:
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Sanduíches", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.bold),),
                        ]
                    ),
                  ),
                  Container(
                    width: 550,
                    height: 300,
                    child: Container(
                        width: 400,
                        height: 240,
                        child: ListView(
                          padding: const EdgeInsets.all(8),
                          children: <Widget>[
                            caixa(("aa"), 500),
                            caixa(("aa"), 400),
                            caixa(("aa"), 300),
                            FloatingActionButton(
                              onPressed: ()=> print("AAA"),
                              tooltip: 'Increment',
                              child: Icon(Icons.add),
                              backgroundColor: Colors.pink,
                            ),
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
        color: Colors.white,
      ),
    );
  }
}
