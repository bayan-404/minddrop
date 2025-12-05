import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsetsGeometry.all(8.0),
        child: Container(
          height: 100,
          width: double.infinity,
          color: Colors.amberAccent,
          child: Padding(
            padding: const EdgeInsetsGeometry.all(8.0),
            child: Text(
              content,
              style: TextStyle(fontSize: 12, color: Colors.black),
              maxLines: 5,
            ),
          ),
        ),
      ),
    );
  }
}
