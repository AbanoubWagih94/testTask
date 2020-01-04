import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../constants.dart';

class BottomBar extends StatelessWidget { @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Feather.layers,
                  color: Color(0xffe1c8e8),
                ),
                title: Text(
                  'reports',
                  style: bottomBarTextStyle.copyWith(fontSize: 12.0),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Feather.settings,
                  color: Color(0xffe1c8e8),
                ),
                title: Text(
                  'servesis',
                  style: bottomBarTextStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  MaterialCommunityIcons.target_variant,
                  color: Color(0xffe1c8e8),
                ),
                title: Text(
                  'Home',
                  style: bottomBarTextStyle.copyWith(fontSize: 16.0),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Feather.book,
                  color: Color(0xffe1c8e8),
                ),
                title: Text(
                  'library',
                  style: bottomBarTextStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Feather.gift,
                  color: Color(0xffe1c8e8),
                ),
                title: Text(
                  'gifts',
                  style: bottomBarTextStyle,
                )),
          ],
        );
  }
}