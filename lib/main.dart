import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Animations Demo',
    home: Animations(),
  ));
}

class Animations extends StatefulWidget {
  @override
  _AnimationsState createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations> {
  var _color = Colors.red;
  var _height = 100.0;
  var _width = 100.0;

  animateContainer() {
    setState(() {
      _color = _color == Colors.red ? Colors.deepPurple : Colors.red;
      _height = _height == 100 ? 200 : 100;
      _width = _width == 100 ? 300 : 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Container Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 2),
              color: _color,
              height: _height,
              width: _width,
              curve: Curves.bounceInOut,
            ),
            FlatButton(
              child: Text("Animate"),
              onPressed: () {
                animateContainer();

              },
              color: Colors.blue,
              colorBrightness: Brightness.dark,
            ),
          ],
        ),
      ),
    );
  }
}
