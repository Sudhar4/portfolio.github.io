import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/screen_widget.dart';
import 'package:portfolio_app/my_projects/projects_bank.dart';
import 'package:portfolio_app/tabs/project_tab.dart';

//ProjectBank projects;
class Screens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      largeScreen: GridView.count(
        //padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 16.0),
        childAspectRatio: MediaQuery.of(context).size.width /
            MediaQuery.of(context).size.height /
            1.5,
        crossAxisCount: 3,
        children: List.generate(
          projects.length,
          (index) => ProjectTab(projects[index]),
        ),
      ),
      smallScreen: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) => ProjectTab(projects[index]),
      ),
    );
  }
}
