import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String content;
  final Function onEdit;
  final Function onDelete;
  const ItemTile({
    super.key,
    required this.content,
    required this.onEdit,
    required this.onDelete,
  });

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
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    content,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    maxLines: 5,
                  ),
                ),
                IconButton(
                  onPressed: onDelete(),
                  icon: Icon(
                    Icons.delete,
                    size: 20,
                    // color: Color(0xFD9CEC3)
                  ),
                ),
                IconButton(
                  onPressed: onEdit(),
                  icon: Icon(
                    Icons.edit,
                    size: 20,
                    //color: Color(0xFA8D5A2)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
