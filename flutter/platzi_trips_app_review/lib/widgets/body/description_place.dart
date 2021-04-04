/// Created by Juan Gonzalo Quiroz Cadavid
/// JuanGQCadavid at Github - 2021

import 'package:flutter/material.dart';
import 'package:platzi_trips_app_review/widgets/body/buttom_purple.dart';
import 'package:platzi_trips_app_review/widgets/stars/stars_review.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final double stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _TitlePlace(namePlace),
            StarsReview(5)
          ],
        ),
        _InformationPlace(this.descriptionPlace),
        ButtonPurple("Navigate")
      ],
    );
  }
}

class _InformationPlace extends StatelessWidget {

  final String descriptionPlace;
  _InformationPlace(this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}


class _TitlePlace extends StatelessWidget {

  final String title;
  _TitlePlace(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30.0
        ),
        textAlign: TextAlign.left,
      ),
      margin: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}

