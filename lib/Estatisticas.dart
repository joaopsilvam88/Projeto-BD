import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class Estatisticas extends StatefulWidget {
  @override
  _EstatisticasState createState() => _EstatisticasState();
}

class _EstatisticasState extends State<Estatisticas> {

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

  Widget barras(String nome, double quant){
    return Container(
      child: Column(
        children: <Widget>[
          Text("Pizza M", style: TextStyle(color: Colors.pink, fontSize: 15.0, fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          RoundedProgressBar(
              height: 50,
              childLeft: Text("60%",style: TextStyle(color: Colors.white)),
              percent: 60,
              theme: RoundedProgressBarTheme.yellow
          ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Estatísticas", style: TextStyle(color: Colors.white, fontSize: 20.0,),), backgroundColor: Colors.pink,),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
            child:
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Mais pedidos", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.bold),),
                ]
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          barras("AA",  1),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          barras("AA",  1),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                  child:
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Extrato de pedidos anteriores", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.bold),),
                      ]
                  ),
                ),
                Container(
                    width: 600,
                    height: 270,
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
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                  child:
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Preço médio dos pratos", style: TextStyle(color: Colors.pink, fontSize: 20.0, fontWeight: FontWeight.bold),),
                      ]
                  ),
                ),
                Container(
                    width: 600,
                    height: 270,
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
          )
        ],
      ),
    );
  }
}
