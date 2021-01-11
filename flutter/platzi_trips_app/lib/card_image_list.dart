import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage('assets/img/place_1.jpg'),
          CardImage('assets/img/place_2.jpg'),
          CardImage('assets/img/place_3.jpg'),
          CardImage('assets/img/place_4.jpg'),
        ],
      ),
    );
  }
}
