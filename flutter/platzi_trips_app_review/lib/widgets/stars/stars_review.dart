import 'package:flutter/material.dart';

class StarsReview extends StatelessWidget {
  final double stars;
  final double iconSize;

  StarsReview(this.stars, {this.iconSize=24.0});

  @override
  Widget build(BuildContext context) {

    List<Widget> starList= [];
    double remainingStarts;

    for ( var iterator = 0 ; iterator < 5; iterator++) {
      remainingStarts = stars - iterator ;
      if (remainingStarts > 1){
        starList.add(_Star(Icons.star, iconSize));
      }
      else if ((remainingStarts < 1) & ( remainingStarts> 0)){
        starList.add(_Star(Icons.star_half, iconSize));
      }
      else{
        starList.add(_Star(Icons.star_border, iconSize));
      }
    }

    return Row(
      children: starList,
    );
  }
}

class _Star extends StatelessWidget {
  final IconData icon;
  final double iconSize;

  _Star(this.icon,this.iconSize);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.5),
      child: Icon(
        this.icon,
        color: Color(0xFFf2C611),
        size: this.iconSize,
      ),
    );
  }
}

