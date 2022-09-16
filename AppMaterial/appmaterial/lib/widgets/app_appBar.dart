import 'package:flutter/material.dart';

class app_AppBar extends StatelessWidget implements PreferredSizeWidget {
  const app_AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

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
