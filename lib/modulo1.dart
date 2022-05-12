import 'package:flutter/material.dart';
import 'package:eda/submodulo1.dart';

class Modulo_1 extends StatefulWidget {
  Modulo_1({Key? key}) : super(key: key);

  @override
  _Modulo_1 createState() => _Modulo_1();
}

class _Modulo_1 extends State<Modulo_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
              child: Text("Empezar la prevención y la solución de problemas")
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
                                  context, MaterialPageRoute(builder: (context) => SubMod_1())
                              );
                            },
                            child: Text("Pasar al submódulo", style: TextStyle(fontSize: 20, color: Colors.white),),
                            shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff9d00d1)), borderRadius: BorderRadius.circular(30.0)),
                        ),
                        SizedBox(height: 100),
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
        Text("Solución de problemas", style: TextStyle(color: Colors.black, fontSize: 40.0)),
        SizedBox(
          height: 25,
        ),
        Text('''Antes de poder solucionar un problema, intenta entenderlo completamente.\nLa resolución de problemas es un proceso metodológico de cuatro pasos. Podrás recordar estos pasos de cuando te presentaron el método científico. \n\n1. En primer lugar, tienes que definir el problema. ¿Cuál es la causa? ¿Qué síntomas indican la presencia de un problema?\n2. A continuación, tienes que identificar varias opciones de soluciones. ¿Qué se aconseja para solucionarlo?\n3. Después, evalúa tus opciones y elige una de ellas. ¿Cuál es la mejor opción para solucionar el problema? ¿Cuál es la opción más sencilla? ¿Cómo debes priorizar?\n4. Finalmente, aplica la solución elegida. ¿Se ha solucionado el problema? ¿Hay otra opción que debas probar? \n\nSabiendo estos pasos fundamentales podemos ejecutar un pal propio para resolver problemas o también nos sirve para comprender técnicas creadas a partir de estos pasos que nos conviene emplearlas en nuestras situaciones.\nEstas técnicas pueden ser muy útiles, pero también te aconsejamos identificar que técnica es mas favorable para cada situación llenando tu imaginación de ideas para resolver los problemas que surjan.\nLlegado el caso, tendrás cuatro consejos diferentes que podrás emplear la próxima vez que un problema te atormente: \n\n1. En primer lugar procura entender la causa del mismo.\n2. Utiliza preguntas para generar ideas que solucionen el problema.\n3. Piensa en problemas anteriores para buscar respuestas a los nuevos.\n4. Deshazte de las ideas preconcebidas y las experiencias pasadas antes de intentar abordar el problema. \n''',
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
      ],
    );
  }
}