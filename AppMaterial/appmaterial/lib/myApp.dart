import 'package:appmaterial/widgets/app_BottomNavigationBar.dart';
import 'package:appmaterial/widgets/app_Drawer.dart';
import 'package:appmaterial/widgets/app_EndDrawer.dart';
import 'package:appmaterial/widgets/app_FloatingActionButton.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        drawer: App_Drawer(),
        endDrawer: App_EndDrawer(),
        appBar: AppBar(),
        bottomNavigationBar: App_BottomNavigationBar(),
        floatingActionButton: App_FloatingActionButton(),
        body: Text('Страница'),
      ),
    );
  }
}

const tabs = [
  Center(child: Text('1 страница')),
  Center(child: Text('1 страница')),
  Center(child: Text('1 страница'))
];
