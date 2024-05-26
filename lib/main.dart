import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'pages/home_page.dart';
import 'pages/hotel_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}

final logger = Logger();

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        logger.d("Navigated to Home Page");
        return HomePage();
      },
    ),
    GoRoute(
      path: '/:pseudo',
      builder: (context, state) {
        final pseudo = state.pathParameters['pseudo']!;
        logger.d("Navigated to /$pseudo");
        return HotelPage(pseudo: pseudo);
      },
    ),
  ],
);
