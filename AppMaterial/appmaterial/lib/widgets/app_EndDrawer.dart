import 'package:flutter/material.dart';

// EndDrawer
class App_EndDrawer extends StatelessWidget {
  const App_EndDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('image/avatar/foto1.jpg')),
          Text('Avatar')
        ],
      )),
    );
  }
}
