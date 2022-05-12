import 'package:eda/modulo1.dart';
import 'package:eda/modulo2.dart';
import 'package:eda/modulo3.dart';
import 'package:eda/modulo4.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  PrincipalPage({Key? key}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Center (
            child: Image(
              image: AssetImage("../Img/EDA2.png"),
              width: 100,
              height: 100,
            ),
          ),
          automaticallyImplyLeading: false,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                              color: Color(0xff9d00d1),
                              padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Modulo_1()));
                              }, child: Text("Módulo 1", style: TextStyle(fontSize: 20, color: Colors.white),),
                              shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0))
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          FlatButton(
                              color: Color(0xff9d00d1),
                              padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Modulo_2()));
                              }, child: Text("Módulo 2", style: TextStyle(fontSize: 20, color: Colors.white),),
                              shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0))
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          FlatButton(
                              color: Color(0xff9d00d1),
                              padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Modulo_3()));
                              }, child: Text("Módulo 3", style: TextStyle(fontSize: 20, color: Colors.white),),
                              shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0))
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          FlatButton(
                              color: Color(0xff9d00d1),
                              padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Modulo_4()));
                              }, child: Text("Módulo 4", style: TextStyle(fontSize: 20, color: Colors.white),),
                              shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0))
                          )
                        ],
                      )
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