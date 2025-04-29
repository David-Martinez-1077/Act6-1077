import 'package:flutter/material.dart';

class ejercicio17 extends StatefulWidget {
  const ejercicio17({Key? key}) : super(key: key);

  @override
  State<ejercicio17> createState() => _ejercicio17State();
}

class _ejercicio17State extends State<ejercicio17> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff743afb),
        title: const Text(
          'Ejercicio 17',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white, // Fondo blanco
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AnimatedPhysicalModel(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  elevation: _isFlat ? 0 : 6.0,
                  shape: BoxShape.rectangle,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  child: const SizedBox(
                    height: 150.0,
                    width: 150.0,
                    child: Icon(Icons.android_outlined),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Click'),
                  onPressed: () {
                    setState(() {
                      _isFlat = !_isFlat;
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
