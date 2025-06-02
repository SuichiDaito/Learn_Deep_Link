import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test/screen/detail_screen.dart';
import 'package:test/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routerNeglect: true,
  routes: [
    GoRoute(path: '/', builder: (context, state) => MyHomePage()),
    GoRoute(path: '/detail', builder: (context, state) => DetailScreen()),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
