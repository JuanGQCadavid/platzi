import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi_challenge_three/top_bar.dart';
import 'package:flutter/services.dart';
import 'contact_card.dart';
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
          _ContactList(),
          TopBar(),
          _Title(),

          
        ],
      ),
    );
  }
}

class _ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          SizedBox(
            height: 150,
          ),
          CardView("juandavid.png","Juan David", 5),
          CardView("fredrik.png","Fredrik", 5),
          CardView("leon.png","The legend", 5),
          CardView("arne.png","Arne", 5),
          CardView("keren.png","Keren", 5),
          CardView("sondre.png","Juan David", 5),
          CardView("fredrik.png","Fredrik", 5),
          CardView("leon.png","The legend", 5),
          CardView("arne.png","Arne", 5),
          CardView("keren.png","Keren", 5),


        ],
      ),
    );
  }
}


class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top:40,
        left: 20
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 35,
          ),
          Expanded(child: Text(
            "Comono",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
            textAlign: TextAlign.center,
          )),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 35,
          ),

        ],

      ),
    );
  }
}


