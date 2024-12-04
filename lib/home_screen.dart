import 'package:demo_move_rectangle/base_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String _title = 'Flutter Demo Home Page';

  @override
  Widget build(BuildContext context) {
    return BaseScaffoldWidget(
      title: _title,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/cube'),
              child: const Text('Cube'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/form'),
              child: const Text('Form'),
            ),
          ],
        ),
      ),
    );
  }
}
