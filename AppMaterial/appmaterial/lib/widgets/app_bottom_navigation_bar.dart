//BottomNavigationBar
import 'package:flutter/material.dart';
import '../my_app.dart';

class App_BottomNavigationBar extends StatefulWidget {
  final Function currentIndex1;
  const App_BottomNavigationBar({Key? key, required this.currentIndex1})
      : super(key: key);

  @override
  State<App_BottomNavigationBar> createState() =>
      App_BottomNavigationBarState();
}

class App_BottomNavigationBarState extends State<App_BottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(label: 'Foto', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Chat', icon: Icon(Icons.message)),
          BottomNavigationBarItem(label: 'Almums', icon: Icon(Icons.album)),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
            widget.currentIndex1(index);
          });
        },
      ),
    );
  }
}
