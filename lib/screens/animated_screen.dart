import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';

class AnimatedScreen extends StatefulWidget {

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.brown;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    _width += 30;
    _height += 30;
    _color = Colors.deepOrange;
    _borderRadius = BorderRadius.circular(30);

    setState(() {});
  }

  void changeShape1() {
    final rndm = Random();
    _width = rndm.nextInt(300).toDouble() + 70;
    _height = rndm.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(255, 255, 255, 1);
    _borderRadius = BorderRadius.circular(rndm.nextInt(100).toDouble());
    
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fantasías animadas de Ayer y Hoy',
        style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeShape1(),
        child: const Icon(Icons.perm_camera_mic, color: Colors.amber,),
      )
    );
  }


}