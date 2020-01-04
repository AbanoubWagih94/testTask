import 'dart:math';

import 'package:flutter/material.dart';


class MyPainter extends CustomPainter {
  Paint getColoredPaint(Color color) {
    Paint paint = Paint();
    paint.color = color;
    return paint;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect1 = Rect.fromPoints(Offset(170, 40), Offset(199, 60));
    Rect rect2 = Rect.fromPoints(Offset(134.6, 70), Offset(100, 100));
    Rect rect3 = Rect.fromPoints(Offset(93, 145), Offset(59.9, 100));
    Rect rect4 = Rect.fromPoints(Offset(60.5, 195), Offset(40, 132));
    Rect rect5 = Rect.fromPoints(Offset(36, 268), Offset(12.5, 227.5));
    Rect rect6 = Rect.fromPoints(Offset(43, 298), Offset(34, 345));
    Rect rect7 = Rect.fromPoints(Offset(57, 354.2), Offset(42.3, 388));
    Rect rect8 = Rect.fromPoints(Offset(115.6, 387.8), Offset(81, 439.8));
    Rect rect9 = Rect.fromPoints(Offset(127.5, 414), Offset(172.5, 464));
    Rect rect10 = Rect.fromPoints(Offset(196, 388.5), Offset(252, 448));
    Rect rect11 = Rect.fromPoints(Offset(233, 329.3), Offset(287, 389.3));
    Rect rect12 = Rect.fromPoints(Offset(287, 286), Offset(342, 346));
    Rect rect13 = Rect.fromPoints(Offset(274, 268), Offset(329, 227.5));
    Rect rect14 = Rect.fromPoints(Offset(291, 226), Offset(345, 153));
    Rect rect15 = Rect.fromPoints(Offset(242, 162), Offset(292, 92));
    Rect rect16 = Rect.fromPoints(Offset(220, 100), Offset(270, 20));

    final upperHalfPaint = Paint()
      ..color = Color(0xffcec0df)
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final lowerHalfPaint = Paint()
      ..color = Color(0xffa9bbda)
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    //first part
    canvas.drawLine(Offset(132.5, 92), Offset(173, 44), upperHalfPaint);
    canvas.drawArc(rect1, -pi / 4, -2.1 * pi / 4, false, upperHalfPaint);
    canvas.drawLine(Offset(228, 90), Offset(195.5, 43.7), upperHalfPaint);

    // sec part
    canvas.drawArc(rect2, pi / 6, pi / 3, false, upperHalfPaint);
    canvas.drawLine(Offset(120, 100), Offset(75, 100), upperHalfPaint);

    // third part
    canvas.drawArc(rect3, -pi / 1.8, -2 * pi / 4, false, upperHalfPaint);
    canvas.drawLine(Offset(60, 126), Offset(60, 172), upperHalfPaint);

    // 4th part
    canvas.drawArc(rect4, pi / 10, pi / 3, false, upperHalfPaint);
    canvas.drawLine(Offset(52, 195), Offset(18, 230), upperHalfPaint);

    // 5th part
    canvas.drawArc(rect5, -pi / 1.5, -2.1 * pi / 4, false, lowerHalfPaint);
    canvas.drawLine(Offset(15, 260), Offset(42, 310), lowerHalfPaint);

    // 6th part
    canvas.drawArc(rect6, -pi / 7, pi / 4, false, lowerHalfPaint);
    canvas.drawLine(Offset(43, 325), Offset(43, 365), lowerHalfPaint);

    // 7th part
    canvas.drawArc(rect7, -pi / 1.2, -2.1 * pi / 3, false, lowerHalfPaint);
    canvas.drawLine(Offset(50, 388), Offset(100, 388), lowerHalfPaint);

    // 8th part
    canvas.drawArc(rect8, -pi / 12, -pi / 2.3, false, lowerHalfPaint);
    canvas.drawLine(Offset(115.5, 408), Offset(134.5, 457), lowerHalfPaint);

    // 9th part
    canvas.drawArc(rect9, pi / 3.9, 2.1 * pi / 4.5, false, lowerHalfPaint);
    canvas.drawLine(Offset(201.5, 400), Offset(167, 456), lowerHalfPaint);

    // 10th part
    canvas.drawArc(rect10, -pi / 2, -pi / 3, false, lowerHalfPaint);
    canvas.drawLine(Offset(220, 389), Offset(262, 389), lowerHalfPaint);

    // 11th part
    canvas.drawArc(rect11, pi / 12, pi / 2.3, false, lowerHalfPaint);
    canvas.drawLine(Offset(287, 310), Offset(287, 365), lowerHalfPaint);

    // 12th part
    canvas.drawArc(rect12, -pi / 1.3, -pi / 3.5, false, lowerHalfPaint);
    canvas.drawLine(Offset(295, 295), Offset(325, 258), lowerHalfPaint);

    // 13th part
    canvas.drawArc(rect13, pi / 4, -2.1 * pi / 4, false, upperHalfPaint);
    canvas.drawLine(Offset(300, 217), Offset(320, 233), upperHalfPaint);

    // 14th part
    canvas.drawArc(rect14, -pi / 0.8, pi / 3, false, upperHalfPaint);
    canvas.drawLine(Offset(292, 135), Offset(292, 180), upperHalfPaint);

    // 15th part
    canvas.drawArc(rect15, pi / 15, -2 * pi / 6, false, upperHalfPaint);
    canvas.drawLine(Offset(243, 100), Offset(283, 100), upperHalfPaint);
    canvas.drawArc(rect16, -pi / 0.65, pi / 4, false, upperHalfPaint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}

