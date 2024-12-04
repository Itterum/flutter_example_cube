import 'package:flutter/material.dart';

class BaseScaffoldWidget extends StatelessWidget {
  const BaseScaffoldWidget({
    super.key,
    required String title,
    required Widget body,
    FloatingActionButton? floatingActionButton,
  })  : _title = title,
        _body = body,
        _floatingActionButton = floatingActionButton;

  final String _title;
  final Widget _body;
  final FloatingActionButton? _floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_title),
      ),
      body: _body,
      floatingActionButton: _floatingActionButton,
    );
  }
}
