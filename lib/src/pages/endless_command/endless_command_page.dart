import 'package:flutter/material.dart';

import 'command_painter.dart';

class EndlessCommandPage extends StatefulWidget {
  const EndlessCommandPage({Key? key}) : super(key: key);

  @override
  State<EndlessCommandPage> createState() => _EndlessCommandPageState();
}

class _EndlessCommandPageState extends State<EndlessCommandPage>
    with SingleTickerProviderStateMixin {
  int infinitiesLength = 5;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 10,
      ),
      lowerBound: 0.0,
      upperBound: 1.0,
    )..repeat();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Command animation')),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            return CustomPaint(
              size: const Size(500, 500),
              painter: CommandPainter(
                progress: _controller.value,
                infinitiesLength: infinitiesLength,
              ),
            );
          },
        ),
      ),
    );
  }
}
