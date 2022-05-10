import 'package:flutter/material.dart';

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
                      SizedBox(height: 50),
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
        Text('''Antes de poder solucionar un problema, intenta entenderlo completamente.\nLa resolución de problemas es un proceso metodológico de cuatro pasos. Podrás recordar estos pasos de cuando te presentaron el método científico. \n\n1. En primer lugar, tienes que definir el problema. ¿Cuál es la causa? ¿Qué síntomas indican la presencia de un problema?\n2. A continuación, tienes que identificar varias opciones de soluciones. ¿Qué se aconseja para solucionarlo?\n3. Después, evalúa tus opciones y elige una de ellas. ¿Cuál es la mejor opción para solucionar el problema? ¿Cuál es la opción más sencilla? ¿Cómo debes priorizar?\n4. Finalmente, aplica la solución elegida. ¿Se ha solucionado el problema? ¿Hay otra opción que debas probar? \n\nSabiendo estos pasos fundamentales podemos ejecutar un pal propio para resolver problemas o también nos sirve para comprender técnicas creadas a partir de estos pasos que nos conviene emplearlas en nuestras situaciones.
      Estas técnicas pueden ser muy útiles, pero también te aconsejamos identificar que técnica es mas favorable para cada situación llenando tu imaginación de ideas para resolver los problemas que surjan.
      Llegado el caso, tendrás cuatro consejos diferentes que podrás emplear la próxima vez que un problema te atormente: \n
      1. En primer lugar procura entender la causa del mismo.
      2. Utiliza preguntas para generar ideas que solucionen el problema.
      3. Piensa en problemas anteriores para buscar respuestas a los nuevos.
      4. Deshazte de las ideas preconcebidas y las experiencias pasadas antes de intentar abordar el problema. \n''',
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
      ],
    );
  }
}