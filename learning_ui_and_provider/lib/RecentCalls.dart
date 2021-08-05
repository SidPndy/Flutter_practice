import 'package:flutter/material.dart';

class RecentCallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
            // child: Image(
            //     image: NetworkImage(
            //         'https://images.unsplash.com/photo-1627387769329-8cc5dbbe44ee?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            clipper: MyClipper(),
          ),
        ),
      ),
    );
  }
}

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final image = Path();
//     final firstControlPoint = Offset(size.width * 0.2, size.height * 0.7);
//     final firstEndPoint = Offset(size.width * 0.5, size.height * 0.85);
//     final secondControlPoint = Offset(size.width * 0.8, size.height * 1);
//     final secondEndPoint = Offset(size.width, size.height * 0.5);
//     final arcControl = Offset(size.width * 0.5, size.height * 0.5);
//     final arcEnd = Offset(0, 0);

//     image.lineTo(0, size.height - 20);
//     image.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);
//     image.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
//         secondEndPoint.dx, secondEndPoint.dy);
//     image.lineTo(size.width, size.height * 0.5);
//     image.lineTo(size.width, 0);
//     image.quadraticBezierTo(arcControl.dx, arcControl.dy, arcEnd.dx, arcEnd.dy);
//     image.lineTo(0, size.height);

//     return image;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper oldClipper) {
//     return false;
//   }
// }

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final myContainer = Path();
    final controlPoint = Offset(size.width * 0.5, size.height * 0.5);
    final endPoint = Offset(0, 0);
    myContainer.lineTo(0, size.height);
    myContainer.lineTo(0, size.height);
    myContainer.lineTo(size.width, size.height);
    myContainer.lineTo(size.width, 0);
    myContainer.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    return myContainer;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
