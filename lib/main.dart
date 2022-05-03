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
        title: const Text("EDA"),
      ),
      body: ListView (
        children: <Widget>[
          Container(
            child: Image.network("https://cdn.pixabay.com/photo/2015/07/31/11/45/library-869061_960_720.jpg"),
            padding: const EdgeInsets.all(20.0),),
          Container(
            child: Image.network("https://cdn.pixabay.com/photo/2015/07/31/11/45/library-869061_960_720.jpg"),
            padding: const EdgeInsets.all(20.0),),
          Container(
            child: Image.network("https://cdn.pixabay.com/photo/2015/07/31/11/45/library-869061_960_720.jpg"),
            padding: const EdgeInsets.all(20.0),),
        ],
      )

    );
  }
}

