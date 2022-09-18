import 'package:appmaterial/widgets/app_bottom_navigation_bar.dart';
import 'package:appmaterial/widgets/app_drawer.dart';
import 'package:appmaterial/widgets/app_end_drawer.dart';
import 'package:appmaterial/widgets/app_floating_action_button.dart';
import 'package:appmaterial/widgets/app_appbar.dart';
import 'package:appmaterial/widgets/background_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  App_BottomNavigationBar? myBNB;
  @override
  void initState() {
    myBNB = App_BottomNavigationBar(currentIndex1: (i) {
      setState(() {
        index = i;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const App_Drawer(),
        endDrawer: const App_EndDrawer(),
        appBar: const app_AppBar(),
        bottomNavigationBar: myBNB,
        floatingActionButton: const App_FloatingActionButton(),
        body: Background_Screen(indexTabs: index),
      ),
    );
  }
}

class DataProviderInheruted extends InheritedWidget {
  final int index;
  const DataProviderInheruted(
      {Key? key, required this.index, required Widget child})
      : super(key: key, child: child);

  static DataProviderInheruted? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DataProviderInheruted>();
  }

  @override
  bool updateShouldNotify(DataProviderInheruted oldWidget) {
    return index != oldWidget.index;
  }
}
