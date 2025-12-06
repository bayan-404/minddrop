import 'package:flutter/material.dart';
import 'package:minddrop/screens/bottom_sheet.dart';
import 'package:minddrop/screens/item_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> notes = ["bayan", "ahmad", "ali"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XffF7F7F7),
        actions: [
          IconButton(
            onPressed: () {
              AddNoteBottomSheet().show(context, null, (String text) {
                setState(() {
                  notes.add(text);
                });
              });
            },
            icon: Icon(Icons.add),
          ),
        ],

        title: const Text('MindDrop'),
      ),
      body: notes.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No notes yet , add a new note',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ],
              ),
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return ItemTile(
                  content: notes[index],
                  onEdit: () {
                    // Edit note logic here
                  },
                  onDelete: () {
                    // Delete note logic here
                  },
                );
              },
              itemCount: notes.length,
            ),
    );
  }
}
