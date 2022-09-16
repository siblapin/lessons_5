import 'package:flutter/material.dart';
import 'package:appmaterial/widgets/app_BottomNavigationBar.dart';

import 'app_BottomNavigationBar.dart';

var tabs = const [
  Center(child: Text('1 страница')),
  Center(child: Text('2 страница')),
  Center(child: Text('3 страница'))
];

var listInt = App_BottomNavigationBarState();

class App_Screen extends StatelessWidget {
  const App_Screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: tabs[listInt.currentIndex]);
  }
}
