import 'package:flutter/material.dart';
import 'package:eda/submodulo2.dart';

class Modulo_2 extends StatefulWidget {
  Modulo_2({Key? key}) : super(key: key);

  @override
  _Modulo_2 createState() => _Modulo_2();
}

class _Modulo_2 extends State<Modulo_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
              child: Text("Manejo del tiempo y ser eficiente")
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
                        FlatButton(
                            color: Color(0xff9d00d1),
                            padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                            onPressed: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => SubMod_2())
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
        Text("Manejo del tiempo", style: TextStyle(color: Colors.black, fontSize: 40.0)),
        SizedBox(
          height: 25,
        ),
        Text('''La organización y planificación del tiempo son elementos clave para tener éxito en los estudios y alcanzar tus objetivos. Para hacerlo adecuadamente hay que calcular cuántas horas se dedican diariamente al estudio y, lo que es más importante, si es un tiempo bien aprovechado. También averiguar cuáles son nuestros biorritmos, reconocer la actitud con la que se afronta el estudio.\nSi quieres sacar el máximo partido a tu tiempo de estudio es importante que organices y planifiques tu jornada. Estas son algunas pautas que te pueden ayudar:\n\n- Planificación. Haz un programa con el tiempo que dedicarás diariamente a estudiar, pero incluye también horas de descanso que son fundamentales para despejar la mente.\n- Lugar. Busca un espacio tranquilo y donde no vayas a ser interrumpido.\n- Descanso. Es fundamental que hagas pequeños descansos o pausas cuando estés estudiando.\n- Fuerza de voluntad. Afronta el estudio con actitud positiva, con ganas y determinación.\n- Objetivos. Ponte metas realistas en cuanto a los horarios y prioriza los objetivos que quieres conseguir.\n- Ocio. Es fundamental que reserves tiempo para el ocio y para disfrutar de la vida. Si solo estudias, al final terminarás agobiándote.\n- Material. Para aprovechar al máximo tu tiempo de estudio reúne todo el material que necesitas para trabajar, ya sean libros, apuntes, material de escritura, ordenador o dispositivos electrónicos.\n- Repasar. Una manera muy útil de consolidar lo aprendido es repasar la materia al cabo de un tiempo.\n\nTambién existen diversos métodos de manejo del tiempo a la hora de estudiar en caso de que el organizar nuestros horarios no nos resulte fácil podemos emplear alguno o varios de estos métodos. Entre los más destacados y utilizados que te recomendemos son:\n\n- Método pomodoro.\n- Método kanban\n- Método GTD''',
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
      ],
    );
  }
}