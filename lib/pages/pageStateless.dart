import 'package:flutter/material.dart';

  class  PageStateless extends StatelessWidget {

    final String nombresito;
    final String correito;
    final String contrasenita;
    const PageStateless(this.nombresito, this.correito, this.contrasenita, {Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless page')),
      body: Center(
        child: Text('texto'),
    ));
  }

}
