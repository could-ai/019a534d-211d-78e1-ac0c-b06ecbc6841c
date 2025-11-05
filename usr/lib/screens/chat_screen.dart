import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Placeholder chat UI
    return SafeArea(
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Chat coming soon!', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
