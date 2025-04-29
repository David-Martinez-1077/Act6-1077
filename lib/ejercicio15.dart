import 'package:flutter/material.dart';

class ejercicio15 extends StatefulWidget {
  const ejercicio15({Key? key}) : super(key: key);

  @override
  State<ejercicio15> createState() => _ejercicio15State();
}

class _ejercicio15State extends State<ejercicio15> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff743afb),
        title: const Text(
          'Ejercicio 15',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              AnimatedOpacity(
                opacity: opacityLevel,
                duration: const Duration(seconds: 2),
                child: const FlutterLogo(
                  size: 80,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text("Fade Logo"),
                onPressed: () {
                  setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
                },
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
          )
        ],
      ),
    );
  }
}
