import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Alert Page') ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_backspace),
        onPressed: (){ Navigator.pop(context); }
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Alerta'), 
          color: Colors.red, 
          textColor: Colors.white,
          shape: StadiumBorder(), 
          onPressed: () => _mostrarAlert(context)
        ),
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) =>
        AlertDialog(
          title: Text('¡Alerta!'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Contenido de la alerta'),
              FlutterLogo(size: 100.0),
            ],
          ),
          actions: <Widget>[
            FlatButton(child: Text('Cancel'), onPressed: () => Navigator.of(context).pop()),
          ],
        )
    );
  }
}