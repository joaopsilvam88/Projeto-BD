import 'package:flutter/material.dart';

class Sacola extends StatefulWidget {
  @override
  _SacolaState createState() => _SacolaState();
}

class _SacolaState extends State<Sacola> {
  Widget item(String nome, int cor){
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
      appBar: AppBar(title: Text("Cliente", style: TextStyle(color: Colors.white, fontSize: 20.0),), backgroundColor: Colors.pink,),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(
          children: <Widget>[
            Container(
              width: 600,
              height: 500,
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                          child:
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text("Restaurantes populares", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.bold),),
                              ]
                          ),
                        ),
                        Container(
                            width: 600,
                            height: 450,
                            child: ListView(
                              padding: const EdgeInsets.all(8),
                              children: <Widget>[
                                item("aa", 500),
                                item("aa", 400),
                                item("aa", 300),
                                item("aa", 500),
                                item("aa", 400),
                                FloatingActionButton(
                                  onPressed: ()=> print("AAA"),
                                  tooltip: 'Increment',
                                  child: Icon(Icons.add),
                                  backgroundColor: Colors.pink,
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              width: 600,
              height: 260,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 25.0, 0.0, 0.0),
                        child:
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Preço", style: TextStyle(color: Colors.pink, fontSize: 25.0, fontWeight: FontWeight.bold),),
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                        child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Text(""),
                              ),
                              Text("  R\$", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.normal),),
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 25.0, 0.0, 0.0),
                        child:
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Total a pagar", style: TextStyle(color: Colors.pink, fontSize: 25.0, fontWeight: FontWeight.bold),),
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                        child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Text(""),
                              ),
                              Text("  R\$", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.normal),),
                            ]
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 25.0, 0.0, 0.0),
                        child:
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Entrega", style: TextStyle(color: Colors.pink, fontSize: 25.0, fontWeight: FontWeight.bold),),
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                        child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
                                child: Text(""),
                              ),
                              Text("  x1", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.normal),),
                            ]
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0),),
                      ButtonTheme(
                        minWidth: 100.0,
                        height: 35.0,
                        child: RaisedButton(onPressed: ()=> print("Confirmar"),
                            shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.white)),
                            child: Text("Adicionar itens",
                              style: TextStyle(color: Colors.white, fontSize: 18), ),
                            color: Colors.pink
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0),),
            ButtonTheme(
              minWidth: 120.0,
              height: 40.0,
              child: RaisedButton(onPressed: ()=> print("Confirmar"),
                  shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.white)),
                  child: Text("Confirmar",
                    style: TextStyle(color: Colors.white, fontSize: 18), ),
                  color: Colors.pink
              ),
            ),
          ],
        ),
      ),
    );
  }
}
