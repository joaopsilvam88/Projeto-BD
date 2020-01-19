import 'package:flutter/material.dart';

class DadosRestaurante extends StatefulWidget {
  @override
  _DadosRestauranteState createState() => _DadosRestauranteState();
}

class _DadosRestauranteState extends State<DadosRestaurante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pratos", style: TextStyle(color: Colors.white, fontSize: 20.0),), backgroundColor: Colors.pink,),
      body: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 600,
                  height: 850,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                        child:
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Nome", style: TextStyle(color: Colors.pink, fontSize: 25.0, fontWeight: FontWeight.bold),),
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                        child:Container(
                          width: 600,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)
                          ),
                          child: Text(""),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 25.0, 0.0, 0.0),
                        child:
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Descrição", style: TextStyle(color: Colors.pink, fontSize: 25.0, fontWeight: FontWeight.bold),),
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                        child:Container(
                          width: 600,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)
                          ),
                          child: Text(""),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                        child:
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Endereço", style: TextStyle(color: Colors.pink, fontSize: 25.0, fontWeight: FontWeight.bold),),
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                        child:Container(
                          width: 600,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)
                          ),
                          child: Text(""),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 25.0, 0.0, 0.0),
                            child:
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text("Categoria", style: TextStyle(color: Colors.pink, fontSize: 25.0, fontWeight: FontWeight.bold),),
                                  Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),),
                                  Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black)
                                    ),
                                    child: Text(""),
                                  ),
                                ]
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 25.0, 0.0, 0.0),
                            child:
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text("CNPJ", style: TextStyle(color: Colors.pink, fontSize: 25.0, fontWeight: FontWeight.bold),),
                                  Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),),
                                  Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black)
                                    ),
                                    child: Text(""),
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),),
                      Text("Tipo de entrega", style: TextStyle(color: Colors.pink, fontSize: 25.0, fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: 1,
                            onChanged: (T)=> print("Botão 1"),
                            activeColor: Colors.pink,
                          ),
                          Text("Grátis", style: TextStyle(color: Colors.pink, fontSize: 15.0, fontWeight: FontWeight.bold),),
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (T)=> print("Botão 1"),
                            activeColor: Colors.pink,
                          ),
                          Text("Rápida", style: TextStyle(color: Colors.pink, fontSize: 15.0, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 0.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Abrir/fechar restaurante", style: TextStyle(fontSize: 20, color: Colors.pink),),
                            Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),),
                            ButtonTheme(
                              minWidth: 40.0,
                              height: 40.0,
                              child: RaisedButton(onPressed: ()=> print("Confirmar"),
                                shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: Colors.black)),
                                child: Text("",
                                  style: TextStyle(color: Colors.white, fontSize: 15), ),
                                color: Colors.pink,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
