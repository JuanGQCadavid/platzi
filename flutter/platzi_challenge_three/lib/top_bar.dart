import 'package:flutter/material.dart';
import 'theme/colors.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
        child: Container(
        height: 200.0,
        ),
        painter: CurvePainter(),
        ),
        Text(
          "Hola"
        )
      ],
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    //Paint paint = Paint();

/*    Path path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.4 ,size.height *0.4, size.width * 0.75, size.height* 0.80);
    path.quadraticBezierTo(size.width * 0.90 ,size.height *0.95, size.width , size.height* 0.95);
    path.lineTo(size.width, 0);*/

/*    Path path = Path();
    path.lineTo(0, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.25 ,size.height *0.65, size.width * 0.45, size.height* 0.30);
    path.quadraticBezierTo(size.width * 0.60 ,size.height *0.60, size.width * 0.80, size.height* 0.75);
    path.quadraticBezierTo(size.width * 0.80 ,size.height *0.45, size.width , size.height* 0.41);
    path.lineTo(size.width, 0);*/

/*    Path path = Path();
    path.lineTo(0, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.25 ,size.height *0.65, size.width * 0.36, size.height* 0.44);
    path.quadraticBezierTo(size.width * 0.50 ,size.height *0.20, size.width * 0.71, size.height* 0.60);
    path.quadraticBezierTo(size.width * 0.87 ,size.height *0.90, size.width , size.height* 0.70);
    path.lineTo(size.width, 0);*/

/*    Path path = Path();
    path.lineTo(0, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.22 ,size.height *0.63, size.width * 0.40, size.height* 0.40);
    path.quadraticBezierTo(size.width * 0.57 ,size.height *0.18, size.width * 0.71, size.height* 0.44);
    path.quadraticBezierTo(size.width * 0.90 ,size.height *0.70, size.width , size.height* 0.41);
    path.lineTo(size.width, 0);*/

/*    double upper = 0.40;
    double lower = 0.60;

    Path path = Path();
    path.lineTo(0, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.175 ,size.height * upper, size.width * 0.35, size.height * lower);
    path.quadraticBezierTo(size.width * 0.50 ,size.height * 0.75, size.width * 0.65, size.height* lower);
    path.quadraticBezierTo(size.width * 0.825 ,size.height * upper, size.width , size.height * lower);
    path.lineTo(size.width, 0);*/

  /*  Path path = Path();
    path.lineTo(0, size.height * 0.51);
    path.quadraticBezierTo(size.width * 0.22 ,size.height *0.48, size.width * 0.33, size.height* 0.54);
    path.quadraticBezierTo(size.width * 0.50 ,size.height *0.65, size.width * 0.67, size.height* 0.54);
    path.quadraticBezierTo(size.width * 0.78 ,size.height *0.48, size.width , size.height* 0.54);
    path.lineTo(size.width, 0);


*//*    path.addPolygon([
      Offset(0, 0),
      Offset(size.width ,0),
      Offset(size.width ,size.height),
      Offset(0, size.height)
    ], true);*//*



    path.close();

    paint.color = colorThree;
    canvas.drawPath(path, paint);*/



    Path path = Path();
    Paint paint = Paint();


    path.lineTo(0, size.height *0.75);
    path.quadraticBezierTo(size.width* 0.10, size.height*0.70,   size.width*0.17, size.height*0.90);
    path.quadraticBezierTo(size.width*0.20, size.height, size.width*0.25, size.height*0.90);
    path.quadraticBezierTo(size.width*0.40, size.height*0.40, size.width*0.50, size.height*0.70);
    path.quadraticBezierTo(size.width*0.60, size.height*0.85, size.width*0.65, size.height*0.65);
    path.quadraticBezierTo(size.width*0.70, size.height*0.90, size.width, 0);
    path.close();

    paint.color = colorThree;
    canvas.drawPath(path, paint);


    path = Path();
    path.lineTo(0, size.height*0.50);
    path.quadraticBezierTo(size.width*0.10, size.height*0.80, size.width*0.15, size.height*0.60);
    path.quadraticBezierTo(size.width*0.20, size.height*0.45, size.width*0.27, size.height*0.60);
    path.quadraticBezierTo(size.width*0.45, size.height, size.width*0.50, size.height*0.80);
    path.quadraticBezierTo(size.width*0.55, size.height*0.45, size.width*0.75, size.height*0.75);
    path.quadraticBezierTo(size.width*0.85, size.height*0.93, size.width, size.height*0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);



    path =Path();
    path.lineTo(0, size.height*0.75);
    path.quadraticBezierTo(size.width*0.10, size.height*0.55, size.width*0.22, size.height*0.70);
    path.quadraticBezierTo(size.width*0.30, size.height*0.90, size.width*0.40, size.height*0.75);
    path.quadraticBezierTo(size.width*0.52, size.height*0.50, size.width*0.65, size.height*0.70);
    path.quadraticBezierTo(size.width*0.75, size.height*0.85, size.width, size.height*0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }
  
}
