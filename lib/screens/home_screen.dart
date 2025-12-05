import 'package:flutter/material.dart';
import 'package:minddrop/screens/item_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XffF7F7F7),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],

        title: const Text('MindDrop'),
      ),
      body: Column(
        children: [
          ItemTile(content: 'this is the first note'),
          ItemTile(content: 'this is the second note'),
          ItemTile(content: 'this is the third note'),
        ],
      ),
    );
  }
}
