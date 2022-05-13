import 'package:eda/modulo3.dart';
import 'package:eda/principalpage.dart';
import 'package:flutter/material.dart';
import 'package:eda/modulo2.dart';

class SubMod_2 extends StatefulWidget {
  SubMod_2({Key? key}) : super(key: key);

  @override
  _SubMod_2 createState() => _SubMod_2();
}

class _SubMod_2 extends State<SubMod_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
              child: Text("Manejo del tiempo y ser eficiente")
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                            color: Color(0xff9d00d1),
                            padding: EdgeInsets.symmetric(horizontal: 55, vertical: 25),
                            onPressed: (){
                              mostrarAlerta(context);
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
                                MaterialPageRoute(builder: (context) => Modulo_2()
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
                    ]
                  ),
                )
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
        Text("Cómo ser más eficiente", style: TextStyle(color: Colors.black, fontSize: 40.0)),
        SizedBox(
          height: 25,
        ),
        Text('''“La productividad es la relación entre los resultados y el tiempo utilizado para obtenerlos; por ello, en la actualidad se ha convertido en el eje primordial para alcanzar los objetivos personales o empresariales.”\n\n¿Que es la eficiencia?\nSe refiere a lograr las metas con la menor cantidad de recursos. Obsérvese que el punto clave en esta definición es ahorro o reducción de recursos al mínimo\n\n8 tips para ser más eficiente:\n- Prioriza las actividades: Inicia cada día con una lista de las actividades pendientes, identifica cuáles son las actividades importantes y que agregan valor a tu trabajo y la organización\n- Primero una cosa y luego otra: Muchos creemos que podemos hacer cosas a la vez, pero en realidad solo hacemos múltiples actividades de una en una. Recuerda que no somos robots. Lo mejor es enfocar mente y cuerpo a una actividad y una vez concluida, podremos pasar a la siguiente con toda la energía y concentración.\n- Respeta los tiempos: Tener un registro de cuánto te lleva hacer qué actividad te ayudará a ser más efectivo a la hora de priorizar tus actividades. Se recomienda que se respete el tiempo asignado a cada actividad. Si no lo has terminado, no importa, acomódalo en otro espacio y pasa a la siguiente tarea.\n- Crea hábitos de tu rutina.\n- Realiza un descanso.\n- Deja de lado las distracciones, desconéctate cuando tengas que poner toda tu atención.\n- Realiza una lista de cosas por hacer.\n- Aprende a decir que “no”: En el afán de querer apoyar o hacer muchas cosas a la vez, se nos hace difícil decir que “no” a los demás, pero esto a la larga hará que el trabajo se nos acumule y aceptemos actividades que no podremos cumplir a cabalidad, lo peor es que no podrás acabar con tus tareas.\n- Atiende los problemas inmediatamente\n- Aprende a delegar: No acapares todo el trabajo, aprende a confiar en tus colaboradores o compañeros y delégales funciones. Ellos también saben hacer igual o mejor las tareas que tú.''',
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
      ],
    );
  }
}

void mostrarAlerta(BuildContext context){
  showDialog(
      barrierDismissible: true, //Permite que no se salga apretando en cualquier lugar fuera del recuadro
      context: context,
      builder:(_) => new AlertDialog(
          title: Text("¡Haz completado el segundo módulo!"),
          content: Text("¡Enhorabuena! Felicidades, haz finalizado exitosamente este módulo."),
          actions: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PrincipalPage()));
            }, child: Text("Salir")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Modulo_3()));
            }, child: Text("Pasar al siguiente"))
          ]
      )
  );
}