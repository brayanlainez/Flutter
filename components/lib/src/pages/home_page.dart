import 'package:flutter/material.dart';

import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icono_string_util.dart';

// import 'package:components/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Componentes') ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) { 
        return ListView(children: _listaItems(snapshot.data, context));
      }  
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = List<Widget>();
    data.forEach((opt){
      final Widget widgetTemp = ListTile(
        title: Text(opt['texto']), 
        leading: getIcon(opt['icon']), 
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue ), 
        onTap: (){
          Navigator.pushNamed(context, opt['ruta']);
          // Alternativa
          // final route = MaterialPageRoute(
          //  builder: (BuildContext context) => AlertPage()
          // );
          // Navigator.push(context, route);
        }
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}