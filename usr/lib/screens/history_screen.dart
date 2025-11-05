import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Placeholder transaction history list
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text('Transaction History', style: TextStyle(fontSize: 20)),
          SizedBox(height: 16),
          Center(child: Text('No transactions yet.')),
        ],
      ),
    );
  }
}
