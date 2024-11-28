import 'package:flutter/material.dart';
import 'package:demo_move_rectangle/buttons_widget.dart';

class RectangleController extends StatefulWidget {
  const RectangleController({super.key});

  @override
  RectangleControllerState createState() => RectangleControllerState();
}

class RectangleControllerState extends State<RectangleController> {
  Alignment _alignment = Alignment.center;

  void _moveUp() {
    setState(() {
      switch (_alignment) {
        case Alignment.topCenter:
        case Alignment.topLeft:
        case Alignment.topRight:
          return;
        case Alignment.center:
          _alignment = Alignment.topCenter;
          break;
        case Alignment.bottomCenter:
          _alignment = Alignment.center;
          break;
        case Alignment.centerRight:
          _alignment = Alignment.topRight;
          break;
        case Alignment.bottomRight:
          _alignment = Alignment.centerRight;
          break;
        case Alignment.centerLeft:
          _alignment = Alignment.topLeft;
          break;
        case Alignment.bottomLeft:
          _alignment = Alignment.centerLeft;
          break;
      }
    });
  }

  void _moveDown() {
    setState(() {
      switch (_alignment) {
        case Alignment.bottomCenter:
        case Alignment.bottomLeft:
        case Alignment.bottomRight:
          return;
        case Alignment.center:
          _alignment = Alignment.bottomCenter;
          break;
        case Alignment.topCenter:
          _alignment = Alignment.center;
          break;
        case Alignment.topLeft:
          _alignment = Alignment.centerLeft;
          break;
        case Alignment.topRight:
          _alignment = Alignment.centerRight;
          break;
        case Alignment.centerRight:
          _alignment = Alignment.bottomRight;
          break;
        case Alignment.centerLeft:
          _alignment = Alignment.bottomLeft;
          break;
      }
    });
  }

  void _moveLeft() {
    setState(() {
      switch (_alignment) {
        case Alignment.topLeft:
        case Alignment.centerLeft:
        case Alignment.bottomLeft:
          return;
        case Alignment.center:
          _alignment = Alignment.centerLeft;
          break;
        case Alignment.topCenter:
          _alignment = Alignment.topLeft;
          break;
        case Alignment.bottomCenter:
          _alignment = Alignment.bottomLeft;
          break;
        case Alignment.topRight:
          _alignment = Alignment.topCenter;
          break;
        case Alignment.centerRight:
          _alignment = Alignment.center;
          break;
        case Alignment.bottomRight:
          _alignment = Alignment.bottomCenter;
          break;
      }
    });
  }

  void _moveRight() {
    setState(() {
      switch (_alignment) {
        case Alignment.topRight:
        case Alignment.centerRight:
        case Alignment.bottomRight:
          return;
        case Alignment.center:
          _alignment = Alignment.centerRight;
          break;
        case Alignment.topCenter:
          _alignment = Alignment.topRight;
          break;
        case Alignment.bottomCenter:
          _alignment = Alignment.bottomRight;
          break;
        case Alignment.topLeft:
          _alignment = Alignment.topCenter;
          break;
        case Alignment.centerLeft:
          _alignment = Alignment.center;
          break;
        case Alignment.bottomLeft:
          _alignment = Alignment.bottomCenter;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: RectangleWidget(
              alignment: _alignment,
            ),
          ),
          Expanded(
            child: Buttons(
              onUp: _moveUp,
              onDown: _moveDown,
              onLeft: _moveLeft,
              onRight: _moveRight,
            ),
          ),
        ],
      ),
    );
  }
}

class RectangleWidget extends StatelessWidget {
  const RectangleWidget({super.key, required this.alignment});

  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Container(
        width: 100,
        height: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
    );
  }
}
