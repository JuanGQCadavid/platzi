import 'package:flutter/material.dart';

class CardFAB extends StatefulWidget {
  @override
  _CardFABState createState() => _CardFABState();
}

class _CardFABState extends State<CardFAB> {
  bool isFav;

  _CardFABState() {
    this.isFav = false;
  }

  void onPressedFav() {
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(
              isFav == true ? "Eliminado de favoritos!" : "Agreado a favoritos!"
          ),
          duration: Duration(
              seconds: 2
          ),
        )
    );

    setState(() {
      this.isFav =  isFav == true ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      mini: true,
      backgroundColor: Color(0xFF11DA53),
      onPressed: onPressedFav,
      child: Icon(
        this.isFav == true ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}
