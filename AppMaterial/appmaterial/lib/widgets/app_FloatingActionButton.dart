import 'package:flutter/material.dart';

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
