import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //variables
    const fontSize30 = TextStyle(fontSize: 30);
    int cantidad = 0;

    return Scaffold(
      //barra titulo
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      //Contenido
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //centrar el contido
          crossAxisAlignment: CrossAxisAlignment.center, //centrar el contenido
          children: <Widget>[
            //children para poner varios textos
            Text('Numero de clics', style: fontSize30),
            Text('10', style: fontSize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      //Accion de un boton
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          cantidad++;
          print('Cantidad:  $cantidad');
        },
      ),
    );
  }
}
