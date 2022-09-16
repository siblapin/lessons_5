import 'package:flutter/material.dart';

class AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: const Text('Flutter Demo Home Page'), actions: [
      Builder(
          builder: (context) => IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: (() {
                Scaffold.of(context).openEndDrawer();
              })))
    ]);
  }
}
