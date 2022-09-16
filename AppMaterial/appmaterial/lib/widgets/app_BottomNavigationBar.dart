//BottomNavigationBar
import 'package:flutter/material.dart';

class App_BottomNavigationBar extends StatefulWidget {
  const App_BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  State<App_BottomNavigationBar> createState() =>
      _App_BottomNavigationBarState();
}

class _App_BottomNavigationBarState extends State<App_BottomNavigationBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(label: 'Foto', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Chat', icon: Icon(Icons.message)),
          BottomNavigationBarItem(label: 'Almums', icon: Icon(Icons.album)),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
