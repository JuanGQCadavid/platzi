import 'package:flutter/material.dart';

import 'fab_card.dart';

class CardImage extends StatelessWidget {

  final String pathImage;
  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      alignment: Alignment(0.8,1.2),
      children: [
        _Image(pathImage),
        CardFAB()
      ],
    );
  }
}

class _Image extends StatelessWidget {

  final String pathImage;
  _Image(this.pathImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      width: 250.0,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image:AssetImage(pathImage),
              fit:BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 11.0,
                offset: Offset(10.0,10.0)
            )
          ]
      ),
    );
  }
}

