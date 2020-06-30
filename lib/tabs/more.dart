import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:html' as html;
import 'package:portfolio_app/images_assets/assets.dart';
import 'package:portfolio_app/constants/constants.dart';

const _heading = TextStyle(color: Color(0xFFC9C9C9), fontSize: 50.0);

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xFF232323),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Text(
                  'Let\'s Talk',
                  style: TextStyle(fontSize: 50, color: Color(0xFFFD5251)),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Card(
                  shadowColor: Color(0xFF323138),
                  color: Color(0xFF6D6F79),
                  child: Container(
                    width: 300.0,
                    height: 35.0,
                    child: Row(
                      children: [
                        SizedBox(width: 10.0),
                        Icon(Icons.mail),
                        SizedBox(width: 10.0),
                        Text(
                          'sshan2903@gmail.com',
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 5.0,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Connect with me on',
                        style: TextStyle(
                            fontSize: 40.0, color: Colors.deepOrangeAccent),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RotateAnimatedTextKit(
                        text: ['Linkedin', 'Github', 'Instagram'],
                        textStyle: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "GloriaHallelujah",
                            color: Colors.indigo),
                        textAlign: TextAlign.start,
                        repeatForever: true,
                      ),
                    ],
                  ),
                ),
                FlatButton.icon(
                    onPressed: () {
                      html.window.open(Constants.github_link, 'sudhar');
                    },
                    icon: SizedBox(
                      child: Image.asset(Assets.github),
                      width: 50.0,
                      height: 25.0,
                    ),
                    label: Text(
                      'Github',
                      style:
                          TextStyle(fontSize: 40.0, color: Color(0xFF6D6F79)),
                    )),
                FlatButton.icon(
                    onPressed: () {
                      html.window.open(Constants.linkedin_link, 'sudhar');
                    },
                    icon: SizedBox(
                      child: Image.asset(Assets.linkedin),
                      width: 50.0,
                      height: 25.0,
                    ),
                    label: Text(
                      'Linkedin',
                      style:
                          TextStyle(fontSize: 40.0, color: Color(0xFF6D6F79)),
                    )),
                FlatButton.icon(
                  onPressed: () {
                    html.window.open(Constants.insta_link, 'sudhar');
                  },
                  icon: SizedBox(
                    child: Image.asset(Assets.ins_logo),
                    width: 50.0,
                    height: 25.0,
                  ),
                  label: Text(
                    'Instagram',
                    style: TextStyle(fontSize: 40.0, color: Color(0xFF6D6F79)),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: [
//                    Text(
//                      'Thanks for scrolling',
//                      style: TextStyle(fontSize: 30.0),
//                    ),
//                    SizedBox(
//                      width: 10.0,
//                    ),
//                    Image(
//                      image: Image.asset(Assets.heart).image,
//                      width: 25.0,
//                    ),
//                  ],
//                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
