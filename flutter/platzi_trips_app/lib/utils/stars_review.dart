import 'package:flutter/material.dart';


class StartsReview extends StatelessWidget {

  /// Btw 0 and 5
  final double stars;
  final double iconSize;

  StartsReview(this.stars, {this.iconSize=24.0});

  @override
  Widget build(BuildContext context) {

    List<Widget> starList = [];
    double remainingStarts;

    for ( var iterator = 0 ; iterator < 5; iterator++) {
      remainingStarts = stars - iterator ;
      if (remainingStarts > 1){
        starList.add(_Star(StartsState.full, iconSize:iconSize));
      }
      else if ((remainingStarts < 1) & ( remainingStarts> 0)){
        starList.add(_Star(StartsState.half, iconSize:iconSize));
      }
      else{
        starList.add(_Star(StartsState.empty, iconSize:iconSize));
      }
    }

    return Row(
      children: starList,
    );
  }
}

enum StartsState {
  full,
  half,
  empty
}

class _Star extends StatelessWidget {
  final StartsState startsState;
  final double iconSize;

  _Star(this.startsState, {this.iconSize=24.0});


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(
        //top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        getIcon(startsState),
        color: Color(0xFFf2C611),
        size: iconSize,
      ),
    );
  }

  IconData getIcon(StartsState startsState) {
    if (startsState == StartsState.full)
      return Icons.star;
    else if (startsState == StartsState.half)
      return Icons.star_half;
    else
      return Icons.star_border;
  }
}
