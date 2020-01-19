import 'package:flutter/material.dart';

class HistoricoPedidos extends StatefulWidget {
  @override
  _HistoricoPedidosState createState() => _HistoricoPedidosState();
}

class _HistoricoPedidosState extends State<HistoricoPedidos> {

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
      appBar: AppBar(title: Text("Pedidos", style: TextStyle(color: Colors.white, fontSize: 20.0),), backgroundColor: Colors.pink,),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
         child: Container(
           width: 600,
           height: 850,
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
                            Text("Em andamento", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.bold),),
                          ]
                      ),
                    ),
                    Container(
                        width: 600,
                        height: 240,
                        child: ListView(
                          padding: const EdgeInsets.all(8),
                          children: <Widget>[
                            item("aa", 500),
                            item("aa", 400),
                            item("aa", 300),
                            FloatingActionButton(
                              onPressed: ()=> print("AAA"),
                              tooltip: 'Increment',
                              child: Icon(Icons.add),
                              backgroundColor: Colors.pink,
                            ),
                          ],
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Esperando aprovação", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.bold),),
                          ]
                      ),
                    ),
                    Container(
                        width: 600,
                        height: 240,
                        child: ListView(
                          padding: const EdgeInsets.all(8),
                          children: <Widget>[
                            item("aa", 500),
                            item("aa", 400),
                            item("aa", 300),
                            FloatingActionButton(
                              onPressed: ()=> print("AAA"),
                              tooltip: 'Increment',
                              child: Icon(Icons.add),
                              backgroundColor: Colors.pink,
                            ),
                          ],
                        )
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child:
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("Anteriores", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.bold),),
                          ]
                      ),
                    ),
                    Container(
                        width: 600,
                        height: 240,
                        child: ListView(
                          padding: const EdgeInsets.all(8),
                          children: <Widget>[
                            item("aa", 500),
                            item("aa", 400),
                            item("aa", 300),
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
      ),
    );
  }
}
