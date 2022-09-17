import 'package:appmaterial/widgets/app_BottomNavigationBar.dart';
import 'package:appmaterial/widgets/app_Drawer.dart';
import 'package:appmaterial/widgets/app_EndDrawer.dart';
import 'package:appmaterial/widgets/app_FloatingActionButton.dart';
import 'package:appmaterial/widgets/app_appBar.dart';
import 'package:appmaterial/widgets/background_screen.dart';
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
        appBar: app_AppBar(),
        bottomNavigationBar: App_BottomNavigationBar(),
        floatingActionButton: App_FloatingActionButton(),
        body: Background_Screen(),
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
