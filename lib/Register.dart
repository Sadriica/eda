import 'package:eda/main.dart';
import 'package:eda/principalpage.dart';
import 'package:eda/Register.dart';
import 'package:eda/login.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  static String name = "";
  static String mail = "";
  static String password = "";


  @override
  void initState() {
    super.initState();

    _cargarPreferencias();

  }

  _cargarPreferencias() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name')!;
      mail = prefs.getString('mail')!;
      password = prefs.getString('password')!;
    });

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xFFFEF2),
        body: Container(
          child: Container(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 50),
                      nombre(),
                      SizedBox(height: 20),
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
                                onPressed:  (){

                                  name = nombresitos.text;
                                  mail = email.text;
                                  password = pass.text;



                                  _guardarValores();

                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(name, mail, password)));
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Inicio(name, mail, password)));

                                  mostrarAlerta(context);
                                }, child: Text("Enviar", style: TextStyle(fontSize: 20, color: Colors.white),),
                                shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFFFEF2)), borderRadius: BorderRadius.circular(30.0))
                            ),
                      SizedBox(width: 60),
                      FlatButton(
                        color: Color(0xFFFEF2),
                        padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Inicio(name, mail, password)
                              )
                          );
                        }, child: Text("Cancelar", style: TextStyle(fontSize: 20, color: Color(0xff9d00d1)),),
                        shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0)),
                      )
                     ] ),
                ]),
              )
          ),
        )
    );
  }


  void mostrarAlerta(BuildContext context){

    name = nombresitos.text;
    mail = email.text;
    password = pass.text;

    showDialog(
        barrierDismissible: false, //Permite que no se salga apretando en cualquier lugar fuera del recuadro
        context: context,
        builder:(_) => new AlertDialog(
            title: Text("Registro completado"),
            content: Text("Felicidades, te haz registrado correctamente"),
            actions: [
              TextButton(onPressed: (){
                launchUrlString("https://forms.gle/66ptB39HScunUfSw9");

              }, child: Text("Realizar evaluación diagnóstica")),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login(name, mail, password)));
              }, child: Text("Salir"))
            ]
        )
    );
  }

  final nombresitos =  TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();

 _guardarValores() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
    prefs.setString('mail', mail);
    prefs.setString('password', password);

 }


  Widget nombre() {
    return Text("Registrarse", style: const TextStyle(
        color: Color(0xff9d00d1), fontSize: 45.0, fontWeight: FontWeight.w700));
  }

  Widget campoNombre() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 250, vertical: 5),
      child: TextField(
        controller: nombresitos,
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
        controller: email,
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
        controller: pass,
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

