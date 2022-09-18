import 'package:flutter/material.dart';

class Background_Screen extends StatelessWidget {
  final int indexTabs;
  const Background_Screen({Key? key, required this.indexTabs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tabs = const [
      Center(child: Text('1 страница')),
      Center(child: Text('2 страница')),
      Center(child: Text('3 страница'))
    ];
    return tabs[indexTabs];
  }
}
