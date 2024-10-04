import 'package:flutter/material.dart';

class History extends StatelessWidget {
  final List<String> chapters = [
    'Introduction to History',
    'Ancient Civilizations',
    'Medieval Europe',
    'The Renaissance',
    'The Age of Exploration',
    'Revolutions and Empires',
    'World Wars',
    'Modern History',
    'Contemporary Issues'
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
              // Add your navigation or action here
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
