import 'package:flutter/material.dart';

import 'dart:math';
class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _height = 50.0;
  double _width = 50.0;
  Color _color = Colors.cyan; 

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container Page')),
      body: Center(
        child: AnimatedContainer(
          height: _height,
          width: _width,
          decoration: BoxDecoration( color: _color, borderRadius: _borderRadius),
          duration: Duration(seconds: 1),
          curve: Curves.slowMiddle,
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.play_arrow), onPressed: _cambiarForma),
    );
  }

  void _cambiarForma() {
    final random = Random();
    setState(() {
      _height = random.nextInt(300).toDouble();
      _width = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 0.8);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}