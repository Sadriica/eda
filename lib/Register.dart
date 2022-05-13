import 'package:eda/main.dart';
import 'package:eda/principalpage.dart';
import 'package:eda/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    // Operation.notes();

    //Operation.insert(Note(name: campoNombre(), mail: campoCorreo(), password: campoContrasena()));


    return Scaffold(
        backgroundColor: Color(0xFFFEF2),
        body: Container(
          child: Container(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      nombre(),
                      SizedBox(height: 50),
                      campoNombre(),
                      campoCorreo(),
                      campoContrasena(),

                      SizedBox(height: 50),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                                color: Color(0xff9d00d1),
                                padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Login())
                                  );
                                }, child: Text("Enviar", style: TextStyle(fontSize: 20, color: Colors.white),),
                                shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFFFEF2)), borderRadius: BorderRadius.circular(30.0))
                            )
                          ]
                      ),
                      SizedBox(width: 60),
                      FlatButton(
                        color: Color(0xFFFEF2),
                        padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Inicio()
                              )
                          );
                        }, child: Text("Cancelar", style: TextStyle(fontSize: 20, color: Color(0xff9d00d1)),),
                        shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0)),
                      )
                    ]
                ),
              )
          ),
        )
    );
  }


  Widget nombre() {
    return Text("Registrarse", style: const TextStyle(
        color: Color(0xff9d00d1), fontSize: 45.0, fontWeight: FontWeight.w700));
  }

  Widget campoNombre() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 250, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(color: Color(0xff9d00d1))
          ),
          hintText: "Nombre Completo",
          fillColor: Color(0xFFFEF2),
          filled: true,
        ),
      ),
    );
  }

  Widget campoCorreo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 250, vertical: 5),
      child: TextField(
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

  Widget campoContrasena() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 250, vertical: 5),
      child: TextField(
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
}

/*void mostrarAlerta(BuildContext context){
  showDialog(
      barrierDismissible: false, //Permite que no se salga apretando en cualquier lugar fuera del recuadro
      context: context,
      builder:(_) => new AlertDialog(
          title: Text("Registro completado"),
          content: Text("Felicidades, te haz registrado correctamente"),
          actions: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PrincipalPage()));
            }, child: Text("Realizar evaluación diagnóstica")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ()));
            }, child: Text("Salir"))
          ]
      )
  );
}*/