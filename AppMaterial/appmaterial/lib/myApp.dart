import 'package:appmaterial/widgets/app_BottomNavigationBar.dart';
import 'package:appmaterial/widgets/app_Drawer.dart';
import 'package:appmaterial/widgets/app_EndDrawer.dart';
import 'package:appmaterial/widgets/app_FloatingActionButton.dart';
import 'package:appmaterial/widgets/app_appBar.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const App_Drawer(),
        endDrawer: const App_EndDrawer(),
        appBar: app_AppBar(),
        bottomNavigationBar: const App_BottomNavigationBar(),
        floatingActionButton: const App_FloatingActionButton(),
        body: const Text('Страница'),
      ),
    );
  }
}

const tabs = [
  Center(child: Text('1 страница')),
  Center(child: Text('1 страница')),
  Center(child: Text('1 страница'))
];
