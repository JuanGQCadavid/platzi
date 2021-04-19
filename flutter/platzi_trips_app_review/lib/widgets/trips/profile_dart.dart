import 'package:flutter/material.dart';
import 'package:platzi_trips_app_review/widgets/appBar/profile_app_bar.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProfileAppBar(),
        _ProfileBody(),
      ],
    );
  }
}

class _ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(
        top: 50,
        left: 20,
        right: 20
      ),
      child: Column(
        children: [
          _UserInfo(),
          _CTAs(),
          SizedBox(height: 20,),
          //_Card("place_1.jpg", "Knuckles Mountains Range", "Hiking, water tall hunting, natural bath", "123,123,123")
          Flexible(
            child: _CardsView(),
          )
        ],
      ),
    );
  }
}

class _CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _Card("place_1.jpg", "Knuckles Mountains Range", "Hiking, water tall hunting, natural bath", "123,123,123"),
        _Card("place_2.jpg", "The flores nea", "Hiking, water tall hunting, natural bath", "123,123,123"),
        _Card("place_3.jpg", "Ay hpta.. ¿que paso?", "Hiking, water tall hunting, natural bath", "123,123,123"),
        _Card("place_4.jpg", "¿Y en donde es esto?", "Hiking, water tall hunting, natural bath", "123,123,123"),
      ],
    );

  }
}

class _Card extends StatelessWidget {
  final String photo_path;
  final String title;
  final String small_decription;
  final String steps;

  _Card(this.photo_path, this.title, this.small_decription, this.steps);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: [
          Container(
            height: 220,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(1,2),
                  blurRadius: 11
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/'+photo_path)
              )
            ),
          ),
          Positioned(

            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1,2),
                      blurRadius: 11
                  )
                ],
              ),
              child: _CardText(title,small_decription,steps),
            ) ,
            top: 170,
            left: 35,
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green
              ),
              child: Icon(
                  Icons.favorite_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
            bottom: 18,
            right: 60,
          )
          
        ],
      ),
    );
  }
}

class _CardText extends StatelessWidget {

  final String title;
  final String small_decription;
  final String steps;

  _CardText(this.title, this.small_decription, this.steps);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 18
            ),
          ),
          Text(
            small_decription,
            style: TextStyle(
                color: Colors.black12,
                fontWeight: FontWeight.w400,
                fontSize: 15
            ),
          ),
          Text(
            "Steps " + steps,
            style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.w800,
                fontSize: 15
            ),
          )
        ],
      ),
    );
  }
}



class _CTAs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _CTA_button(Icons.flag_outlined, isSelected: true,),
          _CTA_button(Icons.card_giftcard),
          _CTA_button(Icons.add, size: 50, isSelected: true,),
          _CTA_button(Icons.email),
          _CTA_button(Icons.person)
        ],
      ),
    );
  }
}

class _CTA_button extends StatelessWidget {
  final IconData icon;
  final double size;
  final bool isSelected;

  _CTA_button(this.icon, {this.size = 30, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: Colors.indigo,
        size: size,
      ),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isSelected == true ? Colors.white : Colors.white54,
        shape: BoxShape.circle,
      ),
    );
  }
}



class _UserInfo extends StatelessWidget {
  final String name = "Juan Gonzalo";
  final String email = "Juan.quiroz@gmail.com";
  final String photo_path = "juang.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "Profile",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              Icon(
                Icons.settings,
                size: 20,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img/'+photo_path)
                  )
                ),
              ),
              SizedBox(width: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    email,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w200
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
