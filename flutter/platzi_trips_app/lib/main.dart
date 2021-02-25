import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String info =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu posuere sem. Nulla aliquet, odio et rhoncus efficitur, nulla justo posuere erat, at molestie libero felis at purus. Proin tempor turpis nec sapien tempor malesuada. Mauris semper libero eget tortor aliquam, vel consequat nulla commodo.";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          body: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 323.0,
                      right: 3.0,
                    ),
                    child: SizedBox(
                      height: 1,
                    ),
                  ),
                  DescriptionPlace("Pat", 1.5, info),
                  ReviewList()
                ],
              ),
              HeaderAppBar()
            ],
          ),
        ));
  }
}
