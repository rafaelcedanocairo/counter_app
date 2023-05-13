import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int cantidad = 0;

  void increase() {
    cantidad++;
    setState(() {});
  }

  void decrease() {
    cantidad--;
    setState(() {});
  }

  void restart() {
    cantidad = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //variables
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      //barra titulo
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 0,
      ),
      //Contenido
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //centrar el contido
          crossAxisAlignment: CrossAxisAlignment.center, //centrar el contenido
          children: <Widget>[
            //children para poner varios textos
            const Text('Numero de clics', style: fontSize30),
            Text('$cantidad', style: fontSize30),
          ],
        ),
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      //Accion de un boton
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        restart: restart,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function restart;

  const CustomFloatingActions({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.restart,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //SizedBox(width: 20), --> caja vacia para dar espaciados

        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () => restart(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}
