import 'package:flutter/material.dart';

class MyCustomPainterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text('CustomPainterPage'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: LayoutBuilder(
          builder: (context, constraints) => Container(
            height: constraints.heightConstraints().maxHeight,
            width: constraints.constrainWidth(),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: CustomPaint(
              painter: MyPaiting(),
              // child: Center(child: Text('Hello World!')),
            ),
          ),
        ),
      ),
    );
  }
}

class MyPaiting extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final arc = Path();

    // final firstEndPoint = Offset(size.width * 0.5, size.height * 0.8);
    // final firstControlPoint = Offset(size.width * 0.25, size.height);
    // final secondEndPoint = Offset(size.width, size.height * 0.7);
    // final secondControlPoint = Offset(size.width * 0.75, size.height * 0.6);
    // arc.moveTo(0, size.height * 0.9);

    // arc.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
    //     firstEndPoint.dx, firstEndPoint.dy);
    // arc.quadraticBezierTo(
    //   secondControlPoint.dx,
    //   secondControlPoint.dy,
    //   secondEndPoint.dx,
    //   secondEndPoint.dy,
    // );

    arc.moveTo(size.width * 0.2, size.height * 0.1);
    arc.arcToPoint(
      Offset(size.width * 0.8, size.height * 0.1),
      radius: Radius.circular(260),
      clockwise: false,
    );
    // arc.moveTo(size.width * 0.2, size.height * 0.1);
    // arc.lineTo(size.width * 0.2, size.height * 0.5);
    // arc.lineTo(size.width * 0.8, size.height * 0.5);
    // arc.lineTo(size.width * 0.8, size.height * 0.1);

    arc.moveTo(0, size.height);
    final firstControlPoint2 = Offset(size.width * 0.1, size.height * 0.6);
    final secondControlPoint2 = Offset(size.width * 0.9, size.height * 0.4);
    final firstEndPoint2 = Offset(size.width * 0.5, size.height * 0.5);
    final secondEndPoint2 = Offset(size.width, 0);

    arc.quadraticBezierTo(firstControlPoint2.dx, firstControlPoint2.dy,
        firstEndPoint2.dx, firstEndPoint2.dy);
    arc.quadraticBezierTo(secondControlPoint2.dx, secondControlPoint2.dy,
        secondEndPoint2.dx, secondEndPoint2.dy);

    canvas.drawPath(
      arc,
      Paint()
        ..color = Colors.white
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 10
        ..style = PaintingStyle.stroke,
    );

    // canvas.drawLine(
    //   Offset(size.width * 0.2, size.height * 0.5),
    //   Offset(size.width * 0.8, size.height * 0.5),
    //   Paint()
    //     ..color = Colors.purple
    //     ..strokeWidth = 10
    //     ..strokeCap = StrokeCap.round,
    // );
    // canvas.drawLine(
    //   Offset(size.width * 0.5, size.height * 0.8),
    //   Offset(size.width * 0.5, size.height * 0.2),
    //   Paint()
    //     ..color = Colors.purple
    //     ..strokeWidth = 10
    //     ..strokeCap = StrokeCap.round,
    // );
    // final a = Offset(size.width * 0.2, size.height * 0.2);
    // final b = Offset(size.width * 0.8, size.height * 0.8);
    // final rect = Rect.fromPoints(a, b);
    // final r = Radius.circular(20);

    // // canvas.drawRect(
    // //   rect,
    // //   Paint()..color = Colors.white,
    // // );
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(rect, r),
    //   Paint()
    //     ..color = Colors.white
    //     ..style = PaintingStyle.stroke
    //     ..strokeWidth = 10,
    // );

    // canvas.drawCircle(
    //     Offset(size.width * 0.5, size.height * 0.5),
    //     5,
    //     Paint()
    //       ..strokeWidth = 10
    //       ..color = Colors.amber
    //     // ..style = PaintingStyle.stroke,
    //     );

    // canvas.drawCircle(
    //   Offset(size.width * 0.5, size.height * 0.5),
    //   100,
    //   Paint()
    //     ..style = PaintingStyle.stroke
    //     ..strokeWidth = 10
    //     ..color = Colors.cyan,
    // );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
