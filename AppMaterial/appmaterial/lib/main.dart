import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  final tabs = const [
    Center(child: Text('1 страница')),
    Center(child: Text('1 страница')),
    Center(child: Text('1 страница'))
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const App_Drawer(),
        endDrawer: App_EndDrawer(),
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
          actions: [
            Builder(
              builder: (context) => IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: (() {
                    Scaffold.of(context).openEndDrawer();
                  })),
            )
          ],
        ),
        bottomNavigationBar: const App_BottomNavigationBar(),
        floatingActionButton: const App_FloatingActionButton(),
        body: Container(child: Text('Страница')),
      ),
    );
  }
}

//showModalBottomSheet
class App_FloatingActionButton extends StatelessWidget {
  const App_FloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: ((context) => Container(
                height: 200,
                child: Column(children: [
                  const Center(
                      child: ListTile(
                    leading: Icon(Icons.credit_card_outlined),
                    title: Text('сумма',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    trailing: Text('200',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  )),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Оплатить'))
                ]))));
      },
      child: const Icon(Icons.add_outlined, size: 40),
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
          const SizedBox(height: 300),
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

// EndDrawer
class App_EndDrawer extends StatelessWidget {
  const App_EndDrawer({
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
        ],
      ),
    );
  }
}
