import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) {
    return false;
  }
}