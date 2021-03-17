import 'package:flutter/material.dart';
import 'widgets/appBar/header_app_bar.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Scaffold(
        body: Stack(
          children: [
            //_BodyListView(),
            HeaderAppBar()
          ],

        ),

      )
    );
  }
}
class _BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          margin: EdgeInsets.only(
            top:323.0,
            right: 3.0
          ),
          child: SizedBox(
            height: 1,
          ),
        ),

      ],

    );
  }
}


