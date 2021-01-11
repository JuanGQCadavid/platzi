import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/person.jpg", "Trump", "1 review - 5 photos", "There is a Dudeee place in Sri Lankda",1.5),
        Review("assets/img/merkel.jpg", "Merkel", "1 review - 5 photos", "There is a Dudeee place in Sri Lankda",5),
        Review("assets/img/putin.jpg", "Putin", "1 review - 5 photos", "There is a Dudeee place in Sri Lankda",3.5),
        Review("assets/img/person.jpg", "Trump", "1 review - 5 photos", "There is a Dudeee place in Sri Lankda",1.5),
        Review("assets/img/merkel.jpg", "Merkel", "1 review - 5 photos", "There is a Dudeee place in Sri Lankda",5),
        Review("assets/img/putin.jpg", "Putin", "1 review - 5 photos", "There is a Dudeee place in Sri Lankda",3.5),
      ],
    );
  }
}
