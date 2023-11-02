import 'package:flutter/material.dart';
import 'package:portafoleo/data/model/project_model.dart';
import 'package:portafoleo/presentation/screens/sections/projects/info_projects.dart';

import '../../../../config/theme/responsive_funtion.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = projectList;
    return Column(
      children: [
        const SizedBox(
          height: 150,
          width: double.infinity,
          child: Center(
              child: Text(
            'Projects',
            style: TextStyle(fontSize: 50),
          )),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: responsiveGrip(context),
              mainAxisExtent: 500,
            ),
            itemBuilder: (BuildContext context, int index) {
              return InfoProjects(
                name: data[index].name,
                description: data[index].description,
                image: data[index].image,
                credentialUrl: data[index].link,
              );
            },
          ),
        )
      ],
    );
  }
}
