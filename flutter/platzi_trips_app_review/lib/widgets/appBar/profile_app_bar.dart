import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          tileMode: TileMode.clamp,
          radius: 1.5,
          //tileMode: TileMode.decal,
          colors: [
            Color(0xFF2F258F),// Al mas oscuro
            Color(0xFF4268D3), // Del mas claro
            //Color(0xFF4268D3), // Del mas claro
          ],
          center: FractionalOffset(1,1),
          stops: [0.6,1] //1.4]
        )
      ),


    );
  }
}
