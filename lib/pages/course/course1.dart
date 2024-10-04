import 'package:flutter/material.dart';

class Course1 extends StatelessWidget {
  final List<String> chapters = [
    'Introduction to User Interface Design',
    'Principles of Good UI Design',
    'Typography and Color Theory',
    'Advanced Interaction Design',
    'UI Layouts and Composition',
    'Responsive Design Techniques',
    'Accessibility in UI Design',
    'Mobile App Design Guidelines',
    'Web UI Design Fundamentals'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Chapters', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          return ChapterCard(
            title: 'Chapter ${index + 1}: ${chapters[index]}',
            onTap: () {
              if (index == 0) { // Si c'est le premier chapitre
                Navigator.of(context).pushNamed("chapitre1");
              }
            },
          );
        },
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ChapterCard({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onTap,
          child: Text(
            'Continue',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
