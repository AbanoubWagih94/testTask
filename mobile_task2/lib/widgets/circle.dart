import 'package:flutter/material.dart';



class Circle extends StatelessWidget {
  final Color color;

  const Circle({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 50.0;

    return Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(child: Text('0%')));
  }
}
