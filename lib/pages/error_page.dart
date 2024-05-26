import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error,
              color: Colors.red,
              size: 100.0,
            ),
            SizedBox(height: 20),
            Text(
              'An error occurred!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the home page using go_router
                context.go('/');
              },
              child: Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}