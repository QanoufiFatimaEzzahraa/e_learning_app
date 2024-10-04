import 'package:flutter/material.dart';

class chapitre1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction to UI Design'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            buildSectionTitle('Introduction'),
            buildImage('assets/images/introduction.png'),
            SizedBox(height: 16),
            buildParagraph(
              'Welcome to your five-step UI (user interface) design short course! Congratulations on taking your first step towards becoming a fully-fledged UI designer!',
            ),
            buildParagraph(
              'Consider this course your introduction to the exciting field of UI design. Over the next five lessons, you’ll learn the fundamental skills of UI design—putting your newfound knowledge from each tutorial into practice as you design your first-ever app from scratch.',
            ),
            SizedBox(height: 36),
            buildSectionTitle('What does a UI designer do?'),
            buildImage('assets/images/2.png'),
            SizedBox(height: 16),
            buildParagraph(
              'UI design refers to the visual design of a digital product’s interface. It’s the process of creating interfaces (namely apps and websites) with a focus on look, style, and interactivity.',
            ),
            buildParagraph(
              'A UI designer designs the movement between different screens, creates visual elements, and ensures the interactive properties that facilitate user interaction.',
            ),
            buildParagraph(
              'UI designers work on a vast array of projects and bring empathy into every stage of the design process to ensure the product is accessible and inclusive for all users.',
            ),
            SizedBox(height: 20),
            buildSectionTitle('What are the skills required to become a UI designer?'),
            buildImage('assets/images/skills.png'),
            SizedBox(height: 16),
            buildParagraph(
              'A UI designer requires a mastery of popular industry-standard tools such as Figma or Sketch and wireframing tools like Balsamiq.',
            ),
            buildParagraph(
              'They need to be well-versed in fundamental methods, theories, and practices of the field, including color theory, typography, and UI design patterns.',
            ),
            buildParagraph(
              'Strong collaboration skills are essential for any UI designer to work effectively with clients, UX designers, and developers.',
            ),

          ],
        ),
      ),
    );
  }

  Widget buildImage(String imagePath) {
    return Container(
      height: 200,
      width: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
          fit: BoxFit.cover,
        ),

      ),
      child: Center(
        child: Icon(Icons.play_circle_fill, size: 64, color: Colors.white),
      ),
    );
  }


  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 26.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
