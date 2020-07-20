import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox1(),
            _checkBox2(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            )
          ],
        ),
      ), 
    );
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigo,
      label: 'Tamaño de la imagen',
      divisions: 10,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : (valor){
        setState(() {
          _valorSlider = valor;
          print(_valorSlider);
        });
      }
    );
  }

  Widget _checkBox1(){
    return Checkbox(
      activeColor: Colors.red,
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _checkBox2(){
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearSwitch(){
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753__340.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

}