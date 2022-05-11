import 'package:flutter/material.dart';

class SubMod_1 extends StatefulWidget {
  SubMod_1({Key? key}) : super(key: key);

  @override
  _SubMod_1 createState() => _SubMod_1();
}

class _SubMod_1 extends State<SubMod_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
              child: Text("Empezar la prevención y la solución de problemas")
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
                        /*FlatButton(
                            onPressed: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => SubMod_1)
                              );
                            },
                            child: child
                        )*/
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
        Text("Prevención de problemas", style: TextStyle(color: Colors.black, fontSize: 40.0)),
        SizedBox(
          height: 25,
        ),
        Text('''¿Qué es prevención?\nBásicamente, la prevención tiene el propósito de evitar la aparición de riesgos para la salud del individuo, de la familia y la comunidad. Implica actuar para que un problema no aparezca o, en su caso, para disminuir sus efectos.\n\n¿Cómo evitar problemas?\n- Mantener una comunicación fluida, clara y sincera: Fomentar el diálogo y la confianza entre las personas de una organización es esencial para que los problemas se traten lo antes posible y así se pueda mediar entre las partes y solucionarlo lo antes posible\n- Aislar el conflicto: Las disputas es mejor que se solucionen en privado evitando, en la medida de lo posible, que se extiendan y afecten a personas no implicadas.\n- Evitar culpar al mensajero: La persona que advierte de un conflicto no tiene porqué “pagar los platos rotos”. Si se desata la ira sobre el que destapa un conflicto, difícilmente volverá a advertir de los problemas que detecte.\n- Es una buena oportunidad para aprender: Aunque sobre el papel y en caliente las crisis siempre las vemos como algo negativo y preocupante, es conveniente mirarlas un poco desde fuera y verlas como una posible oportunidad para mejorar los procesos\n - La escucha activa: No escuchar es un defecto del que adolece mucha gente. Saber escuchar es tan importante como saber expresarse. Para poder llegar a algún entendimiento y solucionar un problema es importantísimo escuchar los argumentos del contrario, sólo así mediante la escucha activa, se podrá encontrar dónde reside el conflicto.\n- No remover el pasado: Cuando se ha conseguido llegar a un consenso y se ha solucionado el problema no conviene dar más vueltas al asunto. Todo llega, todo pasa y todo cambia por tanto hay que encarar los problemas con vistas a que siempre se encontrará una posible solución.''',
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
      ],
    );
  }
}