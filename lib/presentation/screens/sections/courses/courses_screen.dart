import 'package:flutter/material.dart';

import '../../../../config/theme/responsive_funtion.dart';
import '../../../../data/model/certificate_model.dart';
import 'info_courses.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = certificateList;
    return Column(
      children: [
        const SizedBox(
          height: 100,
          width: double.infinity,
          child: Center(
              child: Text(
            'Certifications & Courses',
            style: TextStyle(fontSize: 50),
          )),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: responsiveGrip(context),
              mainAxisExtent: 250,
            ),
            itemBuilder: (BuildContext context, int index) {
              return InfoCourses(
                name: data[index].name,
                organization: data[index].organization,
                date: data[index].date,
                skills: data[index].skills,
                credentialUrl: data[index].credential,
              );
            },
          ),
        )
      ],
    );
  }
}
