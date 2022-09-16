import 'package:flutter/material.dart';

// Drawer
class App_Drawer extends StatelessWidget {
  const App_Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              child: Column(
            children: const [
              CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('image/avatar/foto1.jpg')),
              Text('Avatar')
            ],
          )),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('Foto'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.message),
            title: Text('Chat'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('Almums'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const SizedBox(height: 250),
          SizedBox(
              height: 50,
              width: 250,
              //color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Выход'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Регистрация'),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
