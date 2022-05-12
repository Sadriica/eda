import 'package:eda/modulo3.dart';
import 'package:eda/principalpage.dart';
import 'package:flutter/material.dart';

class SubMod_3 extends StatefulWidget {
  SubMod_3({Key? key}) : super(key: key);

  @override
  _SubMod_3 createState() => _SubMod_3();
}

class _SubMod_3 extends State<SubMod_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
              child: Text("Técnicas de estudio")
          )
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                                color: Color(0xff9d00d1),
                                padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => PrincipalPage()
                                      )
                                  );
                                }, child: Text("Términar módulo", style: TextStyle(fontSize: 20, color: Colors.white)),
                                shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xFFFEF2)), borderRadius: BorderRadius.circular(30.0))
                            ),
                            SizedBox(width: 60),
                            FlatButton(
                              color: Color(0xff9d00d1),
                              padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Modulo_3()
                                    )
                                );
                              }, child: Text("Volver al módulo", style: TextStyle(fontSize: 20, color: Colors.white),),
                              shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0)),
                            ),
                            SizedBox(
                              height: 200,
                            )
                          ],
                        )
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
        Text("Retener información con más facilidad", style: TextStyle(color: Colors.black, fontSize: 40.0)),
        SizedBox(
          height: 25,
        ),
        Text('''Durante la mayor parte de nuestra vida, la mayoría de personas está continuamente aprendiendo cosas nuevas, la cual en la mayoría de casos  es en la educación, en dicha educación es frecuente tener que memorizar gran cantidad de información en periodos relativamente cortos de tiempo. Por eso vamos a hablar de algunos trucos y técnicas para retener información con más facilidad.\n\n- Construcción de una historia: Esta técnica mnemotécnica se basa en elaborar una pequeña historia que vincule todos los elementos a memorizar. Se puede utilizar para recordar fechas, nombres y elementos de un listado.\n- Utilizar acrónimos: De gran utilidad para recordar fórmulas y listados, esta técnica mnemotécnica básicamente se basa en utilizar las iniciales de las palabras para formar otra que permita el recuerdo de todas. Se basa pues en utilizar pistas muy concretas para rememorar la información.\n- Crear una ruta imaginaria: Se trata de un truco mnemotécnico conocido si bien puede ser complejo si las asociaciones no se hacen bien. Su funcionamiento es simple, se trata de crear una ruta imaginaria en la cual vinculemos los diferentes puntos de referencia a los nombres o elementos que estudiar. Para que sea efectiva es necesario tener en cuenta que tenemos que ser capaces de recordar la asociación.\n- Uso de rimas, palabras o frases semejantes: Emplear palabras que rimen con las de aquellos elementos que queremos aprender puede permitir recordar mejor un material concreto. Dividirla en fragmentos más pequeños y más fáciles de memorizar también puede ser útil.\n- Emplear el sentido del humor y la imaginación: Los estados emocionales positivos facilitan la memorización. Por este motivo intentar vincular humor y estudio, siempre que se realice en su justa medida y con unos conocimientos previos suficientes, puede ser de gran utilidad para recordar mejor lo estudiado.''',
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
      ],
    );
  }
}