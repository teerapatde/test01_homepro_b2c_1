import 'package:flutter/material.dart';
import 'dart:math' show pi;

class TestSpinner extends StatefulWidget {
  @override
  _TestSpinnerState createState() => _TestSpinnerState();
}

class _TestSpinnerState extends State<TestSpinner>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SpinningContainer(controller: _controller);
  }
}

class SpinningContainer extends AnimatedWidget {
  const SpinningContainer({Key key, AnimationController controller})
      : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST Spinner'),
      ),
      body: Center(
        child: Transform.rotate(
          angle: _progress.value * 2.0 * pi,
          child: Container(width: 200.0, height: 200.0, color: Colors.green),
        ),
      ),
    );
  }
}
