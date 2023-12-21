import 'package:flutter/material.dart';

class HomepageBackground extends StatelessWidget {
  final screen_height;
  const HomepageBackground({Key? key, required this.screen_height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return ClipPath(
      clipper: BottomShapeCliper(),
      child: Container(
        height: screen_height * 0.5,
        color: themeData.primaryColor,
      ),
    );
  }
}

class BottomShapeCliper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, size.height * 0.85);
    Offset curveEndPoint = Offset(size.width, size.height * 0.85);
    path.lineTo(curveStartPoint.dx, curveStartPoint.dy);
    path.quadraticBezierTo(
        size.width / 2, size.height, curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
