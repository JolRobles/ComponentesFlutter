// VAmos a crear un snipped
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

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
          title: const Text('ListviewScreen2'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: ((context, index) =>  
            ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_downward_outlined,
              color:Colors.indigo,
              
              ),
              onTap:(){
                final game = options[index];
                
              }
          )),

          separatorBuilder:((context, index) => const Divider())

        ));
  }
}
