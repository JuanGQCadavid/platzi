import 'package:flutter/material.dart';
import 'package:platzi_challenge_three/top_bar.dart';
import 'package:flutter/services.dart';
import 'theme/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //margin: EdgeInsets.only(top: 25.0),
        children: [
          TopBar(),

          _Title(),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
/*
          Icon(Icons.arrow_back),
          Center(child: Text("HI"),)
*/

/*          Expanded(
            flex: 5,
              child: Icon(Icons.arrow_back)
          ),
          Expanded(
              flex: 1,
              child: Text("HI")),*/
        ],

      ),
    );
  }
}


