// VAmos a crear un snipped
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fanfasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListviewScreen1'),
        ),
        body: ListView(
          children: [
            // ... los tre spuntos son un operador spread para extraer elementos d ela lista
            ...options
                .map(
                  (game) => ListTile(
                    // leading: const Icon(Icons.access_time_filled_sharp),
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                )
                .toList()

            // ListTile(
            //   leading: Icon(Icons.access_time_filled_sharp),
            //   title: Text('Hola mundo'),
            // ),
          ],
        ));
  }
}
