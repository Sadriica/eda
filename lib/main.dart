import 'package:eda/login.dart';
import 'package:flutter/material.dart';
import 'package:eda/Register.dart';



void main() {
  runApp(MiApp());
}


class MiApp extends StatelessWidget {

  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const String nombresito = "a";
    const  String correito = "a";
    const String contrasenita = "a";

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "EDA",
      home: Inicio(nombresito, correito, contrasenita),
    );
  }
}

class Inicio extends StatefulWidget {

  final String nombresito;
  final  String correito;
  final String contrasenita;

  Inicio(this.nombresito, this.correito, this.contrasenita,{Key? key}) : super(key: key);

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

                              String name = widget.nombresito;
                              String mail = widget.correito;
                              String password = widget.contrasenita;

                              print("name: " + name + "..." );
                              print("mail: " + mail + "...");
                              print("password" + password + "...");


                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login(name,mail,password))
                            );}, child: Text("Iniciar sesión", style: TextStyle(fontSize: 20, color: Colors.white),),
                            shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFFFEF2)), borderRadius: BorderRadius.circular(30.0))
                            ),
                            SizedBox(width: 60),
                            FlatButton(
                            color: Color(0xFFFEF2),
                            padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Register())
                              );
                            }, child: Text("Registrarse", style: TextStyle(fontSize: 20, color: Color(0xff9d00d1)),),
                            shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0)),
                            )
                          ]
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