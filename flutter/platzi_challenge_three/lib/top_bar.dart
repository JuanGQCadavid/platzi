import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        child: Container(
        height: 150.0,
        ),
        painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_1 = new Paint()
      ..color = Color.fromARGB(100, 100, 100, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path_1 = Path();
    path_1.moveTo(size.width*0.0010875,size.height*0.8614400);
    path_1.quadraticBezierTo(size.width*0.0811875,size.height*0.9634800,size.width*0.1691000,size.height*0.9443800);
    path_1.quadraticBezierTo(size.width*0.3041375,size.height*0.9307200,size.width*0.4986250,size.height*0.7864200);
    path_1.lineTo(size.width*0.6500000,size.height*0.7420000);
    path_1.lineTo(size.width,size.height*0.7423400);
    path_1.lineTo(size.width,size.height*0.3473200);
    path_1.lineTo(size.width*0.0004750,size.height*0.3483400);
    path_1.lineTo(size.width*0.0010875,size.height*0.8614400);
    path_1.close();

    canvas.drawPath(path_1, paint_1);

    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.7760000);
    path_0.quadraticBezierTo(size.width*0.0550000,size.height*0.6920000,size.width*0.2087500,size.height*0.6810000);
    path_0.quadraticBezierTo(size.width*0.3425000,size.height*0.6890000,size.width*0.4965500,size.height*0.7970000);
    path_0.quadraticBezierTo(size.width*0.6526750,size.height*0.9181600,size.width*0.7875000,size.height*0.9190000);
    path_0.quadraticBezierTo(size.width*0.9340625,size.height*0.9130000,size.width,size.height*0.7810000);
    path_0.lineTo(size.width,0);
    path_0.lineTo(0,0);
    path_0.lineTo(size.width*0.0009750,size.height*0.7747800);

    canvas.drawPath(path_0, paint_0);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}

