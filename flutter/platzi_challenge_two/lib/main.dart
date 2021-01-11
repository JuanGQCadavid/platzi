///
/// Created by Juan Gonzalo Quiroz
/// JuanGQCadavid at github.
///

import 'package:flutter/material.dart';

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
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: HomeBody(),
      ),
    );
  }
}


class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image(image: AssetImage('assets/drake.jpeg')),
        Center(
          child: Container(
            color: Colors.pinkAccent.withOpacity(0.20),
              alignment: Alignment.center,
              height: 40.0,
              child: Text(
                  "Laugh Now Cry Later",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 25
                ),
              ),
          ),
        )
      ],
    );
  }
}

