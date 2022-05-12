import 'package:eda/modulo4.dart';
import 'package:eda/principalpage.dart';
import 'package:flutter/material.dart';

class SubMod_4 extends StatefulWidget {
  SubMod_4({Key? key}) : super(key: key);

  @override
  _SubMod_4 createState() => _SubMod_4();
}

class _SubMod_4 extends State<SubMod_4> {
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
                                    MaterialPageRoute(builder: (context) => Modulo_4()
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
        Text("Diseño de la información", style: TextStyle(color: Colors.black, fontSize: 40.0)),
        SizedBox(
          height: 25,
        ),
        Text('''¿Qué es?\n\nDiseño de la información es la definición, planificación, y la conformación de los contenidos de un mensaje y su relación con el entorno, con la intención de lograr objetivos particulares en relación con las necesidades de los usuarios.\n\n¿Cómo se aplica?\nEl diseño de la información se basa en las posibilidades lingüísticas-icónico-diagramáticas de analizar, comprender, organizar, diseñar y solucionar diversas representaciones, para mostrar gran cantidad de información en poco espacio\n\n¿Cuáles son los tipos de diseño en la investigación?\nHay cuatro tipos de diseño: investigación exploratoria, investigación descriptiva, investigación explicativa e investigación de evaluación. Luego, el diseño de investigación debe verse desde dos perspectivas: diseño de investigación cualitativo y diseño de investigación cuantitativo.\n\nAlgunas características\n- Comprensibles y asimilables.\n- Funcionales / naturales en su uso con alto grado de accesibilidad\n- Recorridos fáciles y confortables en distintos dispositivos y soportes, tanto en propuestas bidimensionales (una doble página impresa, un banner) como tridimensionales (espacio urbano espacio virtual).\n\nTipo de diseño de la información - instructivo:\nTienen como finalidad dar cuenta del funcionamiento de algo en particular. Puede hacer referencia al uso de un dispositivo, o para la ejecución de un programa u acción.\nEl instructivo da pautas que deben ser llevadas a cabo por aquel que las lee a efectos de tener algún resultado determinado\n- Mapas y planos: Los mapas y planos son visualizaciones del espacio, generalmente en una vista perpendicular al plano representado. Permiten ubicar y generar relaciones de proximidad, distancia, tamaño entre elementos. Se diferencian por el tipo de escala que presentan. Ambas representaciones pueden utilizarse para contener datos que no sean exclusivamente geográficos o localizadores, sino que permitan visualizar eventos dentro de un límite espacial.\n- Gráficos y diagramas: El gráfico de fiebre o línea muestra la variación de un ítem determinado en un período de tiempo.El gráfico de torta indica la división proporcional de un todo. Generalmente se expresa en porcentajes y como un círculo dividido en porciones.El gráfico de barras muestra los valores comparados de distintos ítems de una categoría. Las barras, horizontales o verticales, representan el valor a escala de cada ítem a comparar\n- Tablas: La tabla es un cuadro sencillo de doble entrada en donde se ordenan datos en filas y columnas para una lectura ágil, una opción útil cuando la información no se puede representar de manera gráfica, como en un gráfico de barras o de fiebre. \nEjemplos: Calendario de vacunación, boletín de calificaciones, tablas que presentan horarios, distancias, encuestas, etc.\n- Infografía: Infografía deriva del acrónimo de información + grafía. Es un término acuñado en el ámbito periodístico a partir de la búsqueda de informar de manera diferente, priorizando la velocidad de lectura, la síntesis de la información y la comprensión de sucesos, procesos o eventos complejos. Se vale de dibujos, esquemas, fotografías y elementos gráficos vinculantes. Nigel Holmes uno de los infografías más prestigiosos define este término como hacer entendibles los números''',
          style: TextStyle(color: Colors.black, fontSize: 25.0),),
      ],
    );
  }
}