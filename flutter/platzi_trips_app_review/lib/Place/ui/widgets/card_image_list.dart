import 'package:flutter/material.dart';
import 'file:///C:/Users/jquir/platzi/flutter/platzi_trips_app_review/lib/Place/ui/widgets/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.0,
      margin: EdgeInsets.only(top: 100),
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
