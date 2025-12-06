import 'package:flutter/material.dart';

class AddNoteBottomSheet {
  void show(BuildContext context, String? originalText, Function onSave) {
    // Create a TextEditingController to manage the text input
    TextEditingController controller = TextEditingController(
      text: originalText,
    );
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      clipBehavior: Clip.antiAlias,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      originalText == null ? 'Add New Note' : 'Edit Note',
                      //why == null not = null
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                ],
              ),
              TextField(
                // connect the controller to the TextField
                controller: controller,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Enter your note here',
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 0.0),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  onSave(controller.text);
                  // Add note saving logic here
                  Navigator.pop(context);
                },
                child: Text(originalText == null ? 'Save Note' : 'Update Note'),
              ),

              //SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
