import 'package:flutter/material.dart';

class ejercicio14 extends StatefulWidget {
  const ejercicio14({Key? key}) : super(key: key);

  @override
  State<ejercicio14> createState() => _ejercicio14State();
}

class _ejercicio14State extends State<ejercicio14>
    with SingleTickerProviderStateMixin {
  bool _ispressed = false;
  late Widget _animatedModalBarrier;

  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  void initState() {
    ColorTween _colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = _colorTween.animate(_animationController);
    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff743afb),
        title: const Text(
          'Ejercicio 14',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                      width: 250.0,
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                            ),
                            child: const Text(
                              'Presionar',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              setState(() {
                                _ispressed = true;
                              });
                              _animationController.reset();
                              _animationController.forward();
                              Future.delayed(const Duration(seconds: 3), () {
                                setState(() {
                                  _ispressed = false;
                                });
                              });
                            },
                          ),
                          if (_ispressed) _animatedModalBarrier,
                        ],
                      ),
                    )
                  ]),
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
