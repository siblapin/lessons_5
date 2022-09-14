import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const App_Drawer(),
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        bottomNavigationBar: const App_BottomNavigationBar(),
        body: tabs[_currentIndex],
      ),
    );
  }
}

// Drawer
class App_Drawer extends StatelessWidget {
  const App_Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer();
  }
}

//BottomNavigationBar
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
  final tabs = const [
    Center(child: Text('1 страница')),
    Center(child: Text('1 страница')),
    Center(child: Text('1 страница'))
  ];

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
