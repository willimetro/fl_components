import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo),
            onTap: () {
              final game = options[index];
              if (kDebugMode) {
                print(game);
              }
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: options.length
      )
    );
  }
}
