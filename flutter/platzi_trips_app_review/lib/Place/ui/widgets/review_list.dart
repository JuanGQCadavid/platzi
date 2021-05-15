import 'package:flutter/material.dart';
import 'package:platzi_trips_app_review/Place/ui/widgets/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/fredrik.png", "Fredrik", "1 review - 5 photos", "Awesome",1.5),
        Review("assets/img/arne.png", "Fredrik", "1 review - 5 photos", "Awesome",1.5),
        Review("assets/img/sondre.png", "Fredrik", "1 review - 5 photos", "Awesome",1.5),
        Review("assets/img/leon.png", "Fredrik", "1 review - 5 photos", "Awesome",1.5),
      ],
    );
  }
}
