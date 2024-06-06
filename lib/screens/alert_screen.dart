import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});

  //Metodo de accion de dispostivo ios
  void displayDialogiIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
          return CupertinoAlertDialog(
             title: const Text('Alert Dialog!'),
             content:  const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('¡Esto es el contenido interno de la alerta!'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
             ),
             actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Aceptar')
              ),
             ],
          );  
        }
      );
  }

  //Método de Acción
  void displayDialogAndroid(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Alert Dialog'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('¡Esto es el contenido interno de la alerta!'),
            SizedBox(height: 10),
            FlutterLogo(size: 100)
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: null,
            child: Text('Aceptar'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Cancelar'),
          ),
        ],
    )
  );
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton
         (onPressed: () => Platform.isAndroid ?
         displayDialogAndroid(context): displayDialogiIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Alert Dialog',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20),),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cloud_sync),
        onPressed: (){
          Navigator.pop(context);
        }),
    );
  }
} 