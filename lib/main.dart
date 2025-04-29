import 'package:flutter/material.dart';
import 'package:uii_android_act6/ejercicio12.dart';
import 'package:uii_android_act6/ejercicio13.dart';
import 'package:uii_android_act6/inicial.dart';
import 'package:uii_android_act6/ejercicio14.dart';
import 'package:uii_android_act6/ejercicio15.dart';
import 'package:uii_android_act6/ejercicio16.dart';
import 'package:uii_android_act6/ejercicio17.dart';
import 'package:uii_android_act6/ejercicio18.dart';
import 'package:uii_android_act6/ejercicio19.dart';
import 'package:uii_android_act6/ejercicio20.dart';
import 'package:uii_android_act6/ejercicio21.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const inicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const ejercicio12(),
        '/pantalla3': (context) => const ejercicio13(),
        '/pantalla4': (context) => const ejercicio14(),
        '/pantalla5': (context) => const ejercicio15(),
        '/pantalla6': (context) => const ejercicio16(),
        '/pantalla7': (context) => const ejercicio17(),
        '/pantalla8': (context) => const ejercicio18(),
        '/pantalla9': (context) => const ejercicio19(),
        '/pantalla10': (context) => const ejercicio20(),
        '/pantalla11': (context) => const ejercicio21(),
      },
    );
  }
}
