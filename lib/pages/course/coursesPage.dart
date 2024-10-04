import 'package:flutter/material.dart';
import '/pages/homePage/homePage_widgets.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 16),
            Container(
              width: double.infinity, // Définir la largeur pour occuper toute la largeur disponible
              height: 200,
              child: CourseCard(),
            ),
            SizedBox(height: 16),
            Container(
            width: double.infinity, // Définir la largeur pour occuper toute la largeur disponible
            height: 200,
            child: CourseItem1(),
          ),
             SizedBox(height: 16),
             Container(
              width: double.infinity, // Définir la largeur pour occuper toute la largeur disponible
              height: 200,
              child: CourseItem2(),
            ),
          ],
        ),
      ),
    );
  }
}