
import 'package:flutter/material.dart';

void main() => runApp(const eda());

class eda extends StatelessWidget{
  const eda ({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EDA",
      home: Inicio(),

    );
  }


}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super (key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State <Inicio>{
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
        body: Container(
          child: _campos(),

        )


    );
  }
}

Widget cuerpo(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Container(
        child: const Center(
          child: Text("Formulario de Registro"),
        ),
      )
    ],
  );
}

class _campos extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  )
              ),
            ),
          ],
        )
    );;
  }
}









