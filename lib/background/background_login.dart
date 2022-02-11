import 'package:flutter/material.dart';
import 'dart:ui';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBackground(),
    );
  }
}

class MyBackground extends StatelessWidget {
  const MyBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: size.width,
          height: size.height,
          color: Color(0xff31314F),
          child: CustomPaint(
            size: Size(size.width, size.height),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint _paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    var _jajargenjang_path = Path();
    _jajargenjang_path.moveTo(0, 0);
    _jajargenjang_path.lineTo(size.width, size.height * 0.25);
    _jajargenjang_path.lineTo(size.width, size.height * 0.40);
    _jajargenjang_path.lineTo(0, size.height * 0.15);
    _paint.color = Colors.white;
    _paint.style = PaintingStyle.fill;
    canvas.drawPath(_jajargenjang_path, _paint);

    var _outer_triangle_path = Path();
    _outer_triangle_path.moveTo(size.width * 0.85, size.height * 0.08);
    _outer_triangle_path.lineTo(size.width * 0.85, size.height * 0.337);
    _outer_triangle_path.lineTo(size.width * 0.5, size.height * 0.247);
    _paint.color = Color(0xffBA9D4B);
    _paint.style = PaintingStyle.fill;
    canvas.drawPath(_outer_triangle_path, _paint);

    var _inner_triangle_path = Path();
    _inner_triangle_path.moveTo(size.width * 0.833, size.height * 0.105);
    _inner_triangle_path.lineTo(size.width * 0.833, size.height * 0.32);
    _inner_triangle_path.lineTo(size.width * 0.54, size.height * 0.247);
    _paint.color = Color(0xff31314F);
    _paint.style = PaintingStyle.fill;
    canvas.drawPath(_inner_triangle_path, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
