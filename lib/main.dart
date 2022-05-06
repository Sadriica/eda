import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EDA",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
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
        ),
        backgroundColor: Color(0xFFFEF2),
        body: Container(
            child: cuerpo()
        )
    );
  }
}

Widget cuerpo(){
  return Container(
    child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            textos(),
            SizedBox(height: 50),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  botonIniciarSesion(),
                  SizedBox(width: 60),
                  botonRegistrarse()
                ]
            )
          ],
        )
    ),
  );
}

Widget botonIniciarSesion(){
  return FlatButton(
      color: Color(0xff9d00d1),
      padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
      onPressed: (){}, child: Text("Iniciar sesión", style: TextStyle(fontSize: 20, color: Colors.white),),
      shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFFFEF2)), borderRadius: BorderRadius.circular(30.0))
  );
}

Widget botonRegistrarse(){
  return FlatButton(
    color: Color(0xFFFEF2),
    padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
    onPressed: (){}, child: Text("Registrarse", style: TextStyle(fontSize: 20, color: Color(0xff9d00d1)),),
    shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0)),
  );
}


Widget textos(){
  return Container(
      width: 700,
      height: 350,
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
      Text("Bienvenido a EDA", style: TextStyle(color: Colors.black, fontSize: 45.0, fontWeight: FontWeight.bold)),
      SizedBox(
        height: 25,
      ),
      Text("¡Estamos muy entusiasmados con \n   tu visita! Solo basta un clic para \n   comenzar a construir una mejor \n             versión de ti mismo. \n\n        ¿Por dónde empezamos?", style: TextStyle(color: Colors.black, fontSize: 30.0),),
    ],
  );
}