import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mobile_task2/widgets/bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/my_painter.dart';
import './widgets/circle.dart';
import './constants.dart';

class ScreenApp extends StatefulWidget {
  @override
  _ScreenAppState createState() => _ScreenAppState();
}

class _ScreenAppState extends State<ScreenApp> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xfffbeffd),
          brightness: Brightness.light,
          leading: Icon(
            Icons.menu,
            color: Color(0xffbbb1cc),
          ),
          actions: <Widget>[
            Icon(
              FontAwesome.comment_o,
            ),
            SizedBox(
              width: 20.0,
            ),
            Icon(MaterialIcons.person_outline),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
            ),
          ],
          actionsIconTheme: IconThemeData(color: Color(0xff796a8b)),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                0.1,
                0.5,
                0.1
              ],
                  colors: [
                Color(0xfffbeffd),
                Color(0xfff7f6fc),
                Color(0xfffcfdff)
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Feather.award,
                    color: Color(0xffe8edfe),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(width: 3, color: Color(0xffe6cfe9))),
                    child: Text('4 انشطه مقترحة اليوم',
                        textDirection: TextDirection.rtl),
                  ),
                  Icon(
                    FontAwesomeIcons.handHolding,
                    color: Color(0xffe8edfe),
                    textDirection: TextDirection.rtl,
                  )
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    CustomPaint(
                      size: Size(330, 450),
                      painter: MyPainter(),
                    ),
                    Positioned(
                      child: Text('الشريعة', style: textStyle),
                      top: 0.009 * height,
                      right: 0.415 * width,
                    ),
                    Positioned(
                      child: Text('الاسرة', style: textStyle),
                      top: 0.06 * height,
                      right: 0.25 * width,
                    ),
                    Positioned(
                      child: Text('الصحة', style: textStyle),
                      top: 0.06 * height,
                      left: 0.30 * width,
                    ),
                    Positioned(
                      child: Text('المنهة', style: textStyle),
                      top: 0.27 * height,
                      left: 0.1 * width,
                    ),
                    Positioned(
                      child: Text('الادارة', style: textStyle),
                      top: 0.27 * height,
                      right: 0.07 * width,
                    ),
                    Positioned(
                      child: Text('الموهبة', style: textStyle),
                      top: 0.5 * height,
                      right: 0.32 * width,
                    ),
                    Positioned(
                      child: Text('المجتمع', style: textStyle),
                      top: 0.5 * height,
                      left: 0.27 * width,
                    ),
                    Positioned(
                      child: Text('الذات', style: textStyle),
                      top: 0.56 * height,
                      left: 0.43 * width,
                    ),
                    Positioned(
                      child: Circle(color: Color(0xffffc98a)),
                      top: 0.08 * height,
                      left: 0.48 * width,
                    ),
                    Positioned(
                      child: Circle(color: Color(0xffbca2f8)),
                      top: 0.14 * height,
                      left: 0.3 * width,
                    ),
                    Positioned(
                      child: Circle(color: Color(0xff91baf5)),
                      top: 0.14 * height,
                      right: 0.26 * width,
                    ),
                    Positioned(
                      child: Circle(color: Color(0xff6df181)),
                      top: 0.26 * height,
                      left: 0.23 * width,
                    ),
                    Positioned(
                      child: Circle(color: Color(0xffeea2ae)),
                      top: 0.26 * height,
                      right: 0.21 * width,
                    ),
                    Positioned(
                      child: Circle(color: Color(0xff8bdff6)),
                      top: 0.38 * height,
                      left: 0.27 * width,
                    ),
                    Positioned(
                      child: Circle(color: Color(0xffbea2fa)),
                      top: 0.38 * height,
                      right: 0.15 * height,
                    ),
                    Positioned(
                      child: Circle(color: Color(0xff8dbdff)),
                      top: 0.45 * height,
                      left: 0.425 * width,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomBar());
  }
}
