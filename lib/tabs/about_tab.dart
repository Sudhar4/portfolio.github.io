import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_app/images_assets/assets.dart';
import 'package:portfolio_app/constants/constants.dart';

//name
const _namestyle = TextStyle(
  //fontWeight: FontWeight.bold,
  color: Color(0xFFC9C9C9),
  fontSize: 50.0,
  //fontFamily: "Pacifico",
);
// animated text
//const _animstyle =
//social_media

const social = TextStyle(color: Colors.white, fontSize: 15.0);

class AboutTab extends StatefulWidget {
  @override
  _AboutTabState createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.code,
          size: 50.0,
          color: Colors.blueGrey,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
//            SizedBox(
//              width: 50.0,
//              height: 15.0,
//            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: Image.asset(Assets.sudhar).image,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Sudharshan', style: _namestyle),
            SizedBox(
              height: 10.0,
            ),
            TypewriterAnimatedTextKit(
              text: [
                'Flutter| Cricket| Music| Movies| \n Traveling',
              ],
              // repeatForever: false,
              speed: Duration(milliseconds: 350),
              textStyle: TextStyle(
                color: Color(0xFF58C285),
                fontSize: 30.0,
                fontFamily: "Pacifico",
                //fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      html.window.open(Constants.github_link, 'sudhar');
                    });
                  },
                  icon: SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: Image.asset(Assets.github),
                  ),
                  label: Text(
                    'Github',
                    style: social,
                  ),
                ),
//              SizedBox(
//                width: 10.0,
//              ),
                FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      html.window.open(Constants.linkedin_link, 'sudhar');
                    });
                  },
                  icon: SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: Image.asset(Assets.linkedin),
                  ),
                  label: Text(
                    'Linkedin',
                    style: social,
                  ),
                ),
//              SizedBox(
//                width: 10.0,
//              ),
                FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      html.window.open(Constants.insta_link, 'sudhar');
                    });
                  },
                  icon: SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: Image.asset(Assets.ins_logo),
                  ),
                  label: Text(
                    'Instagram',
                    style: social,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
