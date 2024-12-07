import 'package:demo_move_rectangle/cube_screen.dart';
import 'package:demo_move_rectangle/form_screen.dart';
import 'package:demo_move_rectangle/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/cube': (context) => const CubePageWidget(),
        '/form': (context) => const FormScreen(),
      },
    );
  }
}
