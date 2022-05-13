import 'package:flutter/material.dart';

class  PageStatefull extends StatefulWidget {
  PageStatefull(String name, String mail, String password);


 

 /// PageStatefull({Key ? key}) : super(key: key);

  @override
  _PageStatefullState createState() => _PageStatefullState();


  }

class _PageStatefullState extends State<PageStatefull> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),),
        body: Center(
         /// child: Text(widget.nombresito),
        )
    );
  }

}


