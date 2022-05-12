import 'package:flutter/material.dart';
import 'package:eda/submodulo3.dart';

class Modulo_3 extends StatefulWidget {
  Modulo_3({Key? key}) : super(key: key);

  @override
  _Modulo_3 createState() => _Modulo_3();
}

class _Modulo_3 extends State<Modulo_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
              child: Text("Técnicas de estudio")
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
                                  context, MaterialPageRoute(builder: (context) => SubMod_3())
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
        Text("Técnicas de estudio", style: TextStyle(color: Colors.black, fontSize: 40.0)),
        SizedBox(
          height: 25,
        ),
        Text('''Consisten en una serie de métodos aplicados al momento de estudiar para facilitar la concentración del estudiante e incrementa la capacidad para retener información durante el proceso de aprendizaje de manera fácil.\nHay tres formas de aprender distintas (aprendizaje visual, aprendizaje auditivo y la kinestésica). Cada persona tiene al menos una o varias de estas formas que le da mejores resultados y debemos reconocer cual es mejor antes de aplicar las técnicas de estudio.\nTipos de técnicas de estudio:\nExisten gran cantidad de técnicas de estudio para cada una de las formas de aprender que existen. Por ello cada persona puede seleccionar que técnicas le pueden funcionar de mejor manera \nEntre las distintas técnicas se encuentran técnicas más tradicionales y reconocidas otras más novedosas, pero todas si se usan de forma correcta pueden generar grandes resultados en el momento del aprendizaje.\nAlgunas de las técnicas más usada y reconocidas son:\n\n1. Pomodoro\n2. Mapas mentales\n3. Resúmenes\n4. Listas\n5. Esquemas\n6. Realizar ejercicios\n7. Explicar el tema\n8. Leer en voz alta\n9. Autoevaluación\n10. Flash cards, fichas de estudio o tarjetas de estudio\n11. Mnemotecnia\n12. Método de Cornell''',
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
      ],
    );
  }
}