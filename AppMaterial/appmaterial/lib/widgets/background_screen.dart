import 'package:flutter/material.dart';
import '../myApp.dart';

class Background_Screen extends StatefulWidget {
  const Background_Screen({
    Key? key,
  }) : super(key: key);

  @override
  State<Background_Screen> createState() => _Background_ScreenState();
}

class _Background_ScreenState extends State<Background_Screen> {
  var tabs = const [
    Center(child: Text('1 страница')),
    Center(child: Text('2 страница')),
    Center(child: Text('3 страница'))
  ];

  @override
  Widget build(BuildContext context) {
    final indexInt = context
            .dependOnInheritedWidgetOfExactType<DataProviderInheruted>()
            ?.index ??
        0;
    return tabs[indexInt];
  }
}
