import 'package:eda/main.dart';
import 'package:flutter/material.dart';

class Modulo_1 extends StatefulWidget {
  Modulo_1({Key? key}) : super(key: key);

  @override
  _Modulo_1 createState() => _Modulo_1();
}

class _Modulo_1 extends State<Modulo_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
            child: Text("Empezar la prevención y la solución de problemas")
          )
        ),
        backgroundColor: Color(0xFFFEF2),
        body: Container(
            child: Container(
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      textos(),
                      SizedBox(height: 50),
                      /*FlatButton(
                          color: Color(0xff9d00d1),
                          padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Inicio()));
                          }, child: Text("¡Vamos a aprender!", style: TextStyle(fontSize: 20, color: Colors.white),),
                          shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0))
                      )*/
                    ],
                  )
              ),
            )
        )
    );
  }
}

Widget textos(){
  return Container(
      width: 1000,
      height: 400,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff9d00d1), width: 3),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: text()
  );
}

Widget text(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("Módulo géneral", style: TextStyle(color: Color(0xff9d00d1), fontSize: 45.0, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 25,
      ),
      Text("Este es el primer módulo de EDA. Dentro de este aprenderás a cómo \ngestionar tu tiempo de manera efectiva, buscar información, resolver \nproblemas y diseñar, o encontrar, una técnica de estudio que se \nadhiera a tu forma de aprender.", style: TextStyle(color: Colors.black, fontSize: 25.0),),
    ],
  );
}