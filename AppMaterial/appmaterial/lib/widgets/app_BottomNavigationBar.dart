//BottomNavigationBar
import 'package:flutter/material.dart';

class App_BottomNavigationBar extends StatefulWidget {
  const App_BottomNavigationBar({
    Key? key,
  }) : super(key: key);

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
          });
        },
      ),
    );
  }
}
