import 'package:demo_move_rectangle/base_scaffold.dart';
import 'package:demo_move_rectangle/cube/bloc/cube_bloc.dart';
import 'package:demo_move_rectangle/cube/bloc/cube_state.dart';
import 'package:demo_move_rectangle/cube/bloc/buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubeScreen extends StatelessWidget {
  const CubeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext _) => CubeBloc(),
      child: const CubePageWidget(),
    );
  }
}

class CubePageWidget extends StatefulWidget {
  const CubePageWidget({super.key});

  @override
  CubePageWidgetState createState() => CubePageWidgetState();
}

class CubePageWidgetState extends State<CubePageWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffoldWidget(
      title: 'Cube',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CubeBloc, CubeState>(
              builder: (BuildContext context, CubeState state) {
                return Expanded(child: _buildCube(state.alignment));
              },
            ),
            Expanded(
              child: Buttons(
                cubeBloc: context.read<CubeBloc>(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCube(Alignment alignment) {
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
