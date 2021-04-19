import 'package:flutter/material.dart';
import 'package:platzi_trips_app_review/widgets/appBar/header_app_bar.dart';
import 'package:platzi_trips_app_review/widgets/body/description_place.dart';
import 'package:platzi_trips_app_review/widgets/body/review_list.dart';


class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BodyListView(),
        HeaderAppBar(),
      ],
    );
  }
}



class _BodyListView extends StatelessWidget {
  String info =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu posuere sem. Nulla aliquet, odio et rhoncus efficitur, nulla justo posuere erat, at molestie libero felis at purus. Proin tempor turpis nec sapien tempor malesuada. Mauris semper libero eget tortor aliquam, vel consequat nulla commodo.";

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          margin: EdgeInsets.only(
              top:350.0,
              right: 3.0
          ),
          child: SizedBox(
            height: 1,
          ),
        ),
        DescriptionPlace("Pat", 1.5, info),
        ReviewList()
      ],

    );
  }
}

