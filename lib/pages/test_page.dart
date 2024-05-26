import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  final String pseudo;

  TestPage({required this.pseudo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test Page')),
      body: Center(
        child: Text('This is a test page for $pseudo'),
      ),
    );
  }
}
