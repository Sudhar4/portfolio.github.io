import 'package:flutter/material.dart';
import 'package:portfolio_app/my_projects/projects.dart';
import 'dart:html' as html;
import 'package:portfolio_app/images_assets/assets.dart';

class ProjectTab extends StatelessWidget {
  Projects _pro;

  //double pad;
  ProjectTab(this._pro);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.all(10.0),
      color: Color(0xFF63656B),
      child: GestureDetector(
        onTap: () {
          html.window.open(_pro.link, 'sudharshan');
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 40,
                child: Image(
                  image: Image.asset(_pro.image).image,
                  width: 52,
                  height: 40,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  //padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        _pro.name,
                        style: Theme.of(context).textTheme.title,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        _pro.desc,
                        style: Theme.of(context).textTheme.caption,
                        textScaleFactor: 1.5,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//    final width = MediaQuery.of(context).size.width;
//    final height = MediaQuery.of(context).size.height;
//    return Card(
//      //clipBehavior: Clip.antiAlias,
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(15.0),
//      ),
//      color: Colors.grey,
//      shadowColor: Colors.redAccent,
//      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, pad),
//      child: InkWell(
//        onTap: () {
//          html.window.open(_pro.link, 'projects');
//        },
//        child: Padding(
//          padding: const EdgeInsets.all(10.0),
//          child: Row(
//            mainAxisSize: MainAxisSize.min,
//            crossAxisAlignment: CrossAxisAlignment.start,
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: [
//              Expanded(
//                flex: 40,
//                child: Image(
//                  image: Image.asset(_pro.image).image,
//                  width: width * 0.25,
//                  height: height * 0.25,
//                ),
//              ),
//              Expanded(
//                flex: 3,
//                child: Container(),
//              ),
//              Expanded(
//                flex: 60,
//                child: Container(
//                  padding: EdgeInsets.only(top: 8.0),
//                  child: Column(
//                    mainAxisSize: MainAxisSize.max,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: [
//                      Expanded(
//                        child: Text(
//                          _pro.name,
//                          style: Theme.of(context).textTheme.title,
//                        ),
//                      ),
//                      SizedBox(
//                        height: 5.0,
//                      ),
//                      Expanded(
//                        flex: 5,
//                        child: Text(
//                          _pro.desc,
//                          textScaleFactor: 1.4,
//                          style: Theme.of(context).textTheme.caption,
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//    ;
//  }
//}
