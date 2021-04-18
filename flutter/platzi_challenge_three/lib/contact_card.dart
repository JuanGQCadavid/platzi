import 'package:flutter/material.dart';


class CardView extends StatelessWidget {
  final String user_photo;
  final String user_name;
  final int user_experience_years;

  CardView(this.user_photo, this.user_name, this.user_experience_years);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 4
      ),

      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                left: 10.0,
                right: 40.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _ContactInfo(user_photo, user_name, user_experience_years),
                _EmailCTA(),

              ],
            ),
          ),
          Divider(
            thickness: 0.6,
          )
        ],
      ),
    );
  }
}

class _EmailCTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.mail_sharp,
        color: Color.fromARGB(255, 33, 150, 243),
        size: 45,
      ),
    );
  }
}


class _ContactInfo extends StatelessWidget {
  final String user_photo;
  final String user_name;
  final int user_experience_years;

  _ContactInfo(this.user_photo,this.user_name, this.user_experience_years);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _PhotoProfile(user_photo),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              user_name,
              style:  TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 20
              ),

            ),
            Text(
              "Experience: " + user_experience_years.toString() + " years",
              style:  TextStyle(
                  fontSize: 15,
                //fontWeight: FontWeight.w400
              ),

            )
          ],
        )
      ],

    );
  }
}


class _PhotoProfile extends StatelessWidget {
  final String person_url;

  _PhotoProfile(this.person_url);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/img/"+person_url),
        )
      ),

    );
  }
}

