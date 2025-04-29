import 'package:flutter/material.dart';

class ejercicio21 extends StatefulWidget {
  const ejercicio21({Key? key}) : super(key: key);

  @override
  State<ejercicio21> createState() => _ejercicio21State();
}

class _ejercicio21State extends State<ejercicio21> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff743afb),
        title: const Text(
          'Ejercicio 21',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: Text('$_count',
                      style: const TextStyle(fontSize: 40),
                      key: ValueKey(_count)),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text('Añadir'),
                  onPressed: () {
                    setState(() {
                      _count += 1;
                    });
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial',
                  style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
