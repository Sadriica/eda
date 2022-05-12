import 'package:flutter/material.dart';
import 'package:eda/submodulo4.dart';

class Modulo_4 extends StatefulWidget {
  Modulo_4({Key? key}) : super(key: key);

  @override
  _Modulo_4 createState() => _Modulo_4();
}

class _Modulo_4 extends State<Modulo_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
              child: Text("Métodos de búsqueda e investigación")
          ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color(0xFFFEF2),
      body: Container(
          child: ListView(
              children: <Widget>[
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      textos(),
                      FlatButton(
                          color: Color(0xff9d00d1),
                          padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                          onPressed: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => SubMod_4())
                            );
                          },
                          child: Text("Pasar al submódulo", style: TextStyle(fontSize: 20, color: Colors.white),),
                          shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0))
                      ),
                      SizedBox(height: 100)
                    ],
                  )
              ),
              ]
          )
      ),
    );
  }

  Widget textos() {
    return Container(
      padding: EdgeInsets.all(100.0),
        child: (
          text()
        )
    );
  }

  Widget text() {
    return Column(
      children: <Widget>[
        Text("Métodos de búsqueda e investigación", style: TextStyle(color: Colors.black, fontSize: 40.0)),
        SizedBox(
          height: 25,
        ),
        Text("Son un elemento clave para la construcción de un conocimiento válido sobre un fenómeno particular los cuales son indispensables para la investigación y es la herramienta que ayuda a sistematizar u ordenar información.\n\nRealmente existen varios métodos de investigación como:\n- Método cuantitativo.\n- Método cualitativo.\n- Métodos mixtos de investigación.\n- Método inductivo.\n- Método analítico.\n- Método sintético.\n- Método Histórico-comparativo.\n- Método Hipotético-deductivo.\n- Método dialéctico.\n\n¿Cómo saber que método elegir en cada situación?\nLa elección de un método de investigación dependerá en gran medida de qué preguntas busques responder como parte de tu investigación, lo que determinará la orientación del trabajo La elección de un método cuantitativo responde a la necesidad de ofrecer conclusiones generalizables sobre los fenómenos que analizan. La elección de un método cualitativo permite hacer uso de las “percepciones” de los sujetos a los que estudia.\n\n¿Qué es un buscador?\nSon gigantescas bases de datos que contienen información sobre cientos de miles de páginas de Internet.\nExisten distintos buscadores en los cuales se pueden realizar investigaciones como son ( de los más populares) Google, Yahoo, Microsoft es Bing, Qwant.\n\nClases de métodos de búsqueda:\n- Índices temáticos.\n- Motores de búsqueda.\n- Metabuscadores.\n- Métodos activos.\n- Métodos pasivos.",
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
      ],
    );
  }
}