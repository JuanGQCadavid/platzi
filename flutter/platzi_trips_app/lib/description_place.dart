/// Created by Juan Gonzalo Quiroz Cadavid
/// JuanGQCadavid at Github

import 'package:flutter/material.dart';
import 'utils/stars_review.dart';
import 'button_purple.dart';

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
            StartsReview(stars)
          ],
        ),
        _InformationPlace(descriptionPlace),
        ButtonPurple("Navigate"),
      ],
    );
  }
  
}

class _InformationPlace extends StatelessWidget {

  final String description;
  _InformationPlace(this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        description,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
        textAlign: TextAlign.left,
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
          fontFamily: "Lato",
          fontSize: 30.0,
          fontWeight: FontWeight.w900
        ),
        textAlign: TextAlign.left,
      ),
      margin: EdgeInsets.only(
        //top: 320.0,
        left: 20.0,
        right: 20.0,
      ),
    );
  }
}
