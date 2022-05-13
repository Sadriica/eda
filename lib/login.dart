import 'package:eda/main.dart';
import 'package:eda/principalpage.dart';
import 'package:flutter/material.dart';
import 'package:eda/Register.dart';

class Login extends StatefulWidget {

  final String nombresito;
  final String correito;
  final String contrasenita;

  Login(this.nombresito, this.correito, this.contrasenita,{Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.purple,),
              ]
          )

          ),
        backgroundColor: Color(0xFFFEF2),
        body: Container(
            child: Container(
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      nombre(),
                      SizedBox(height: 50),
                      campoUsuario(),
                      campoContrasena(),
                      SizedBox(height: 50),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                      FlatButton(
                      color: Color(0xff9d00d1),
                      padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                      onPressed: (){

                        print(widget.nombresito);
                        print(widget.correito);
                        print(widget.contrasenita);
                        print(correo.text);
                        print(contrasena.text);

                        String name = widget.nombresito;
                        String correoo = widget.correito;
                        String contrasenaa = widget.contrasenita;

                        correo.toString();
                        contrasena.toString();

                        if( widget.correito == correo.text && widget.contrasenita == contrasena.text){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PrincipalPage()
                          ));
                      } else {
                        _mostrarAlerta(context);
                        }

                      }, child: Text("Enviar", style: TextStyle(fontSize: 20, color: Colors.white),),
                      shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFFFEF2)), borderRadius: BorderRadius.circular(30.0))
                      ),
                            SizedBox(width: 60),
                      FlatButton(
                      color: Color(0xFFFEF2),
                      padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Inicio(widget.nombresito, widget.correito, widget.contrasenita))
                        );
                      }, child: Text("Cancelar", style: TextStyle(fontSize: 20, color: Color(0xff9d00d1)),),
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

final correo = TextEditingController() ;
final contrasena = TextEditingController() ;


void _mostrarAlerta(BuildContext context){
  showDialog(
      barrierDismissible: true, //Permite que no se salga apretando en cualquier lugar fuera del recuadro
      context: context,
      builder:(_) =>  AlertDialog(
          title: Text("Fallo en el inicio de Sesión"),
          content: Text("No se ha podido iniciar sesión, verifique sus datos"),
      )
  );
}


Widget nombre(){
  return Text("Iniciar sesión", style: TextStyle(color: Color(0xff9d00d1), fontSize: 45.0, fontWeight: FontWeight.w700));
}

Widget campoUsuario(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 250, vertical: 5),
    child: TextField(
      controller: correo,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: Color(0xff9d00d1))
        ),
        hintText: "Correo",
        fillColor: Color(0xFFFEF2),
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 250, vertical: 5),
    child: TextField(
      controller: contrasena,
      obscureText: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: Color(0xff9d00d1))
        ),
        hintText: "Contraseña",
        fillColor: Color(0xFFFEF2),
        filled: true,
      ),
    ),
  );
}