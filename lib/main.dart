//import 'package:counter_app/screens/home_screen.dart';
import 'package:counter_app/screens/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Creamos un wiget, todos los widget son clases
//Los stateless widget no mantenienen los valores de las variables
//en cambio los StateFull si
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, //para quitar la etiqueta de DEBUG
        home: CounterScreen());
  }
}
