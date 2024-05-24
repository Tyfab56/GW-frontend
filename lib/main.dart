import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'pages/home_page.dart';
import 'pages/hotel_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/:pseudo',
        builder: (context, state) {
          final pseudo = state.pathParameters[
              'pseudo']!; // Utilisez pathParameters au lieu de params
          return HotelPage(pseudo: pseudo);
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Guides d\'accueil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
