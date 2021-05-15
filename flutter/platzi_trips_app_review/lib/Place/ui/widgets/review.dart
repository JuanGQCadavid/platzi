import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/jquir/platzi/flutter/platzi_trips_app_review/lib/widgets/stars_review.dart';

class Review extends StatelessWidget {
  final String person_url;
  final String name;
  final String details;
  final String comment;
  final double stars;

  Review(this.person_url, this.name, this.details, this.comment, this.stars);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _PhotoProfile(this.person_url),
        _UserDetails(name, details,comment,stars)
      ],
    );
  }
}

class _UserDetails extends StatelessWidget {
  final double stars;
  final String name;
  final String details;
  final String comment;

  _UserDetails(this.name, this.details, this.comment, this.stars);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Text(
          name,
          fontSize: 17.0,
        ),
        _Details(details, stars),
        _Text(
          comment,
          fontWeight: FontWeight.w900,
        )

      ],
    );;
  }
}

class _Details extends StatelessWidget {

  final String details;
  final double stars;

  _Details(this.details, this.stars);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Text(
          details,
          color: Color(0xFFa3a5a7),
        ),
        StarsReview(stars, iconSize:15.0)
      ],
    );
  }
}


class _Text extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;

  _Text(this.text,{this.fontWeight=FontWeight.normal, this.color=null, this.fontSize = 13.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: fontSize,
            fontFamily: "Lato",
            fontWeight: fontWeight,
            color: color,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}




class _PhotoProfile extends StatelessWidget {
  final String person_url;
  _PhotoProfile(this.person_url);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(person_url)
        )
      ),
    );
  }
}

