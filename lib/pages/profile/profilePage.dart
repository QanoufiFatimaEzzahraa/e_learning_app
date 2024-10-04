import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profile', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/sky.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 10,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/icons/profile.png"),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fatima ezzahraa',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'UI/UX Designer',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.people, color: Colors.black),
                              SizedBox(width: 4),
                              Text(
                                '5.7k',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(width: 16),
                              Icon(Icons.star, color: Colors.black),
                              SizedBox(width: 4),
                              Text(
                                '4.9',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(width: 16),
                              Icon(Icons.comment, color: Colors.black),
                              SizedBox(width: 4),
                              Text(
                                '215',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'I\'m a professional web & mobile app designer with 4+ years of experience. I offer expert services in UI/UX Design, Web Design, App Design, Dashboard Design, Landing Page, Branding, and other top-notch graphic designs. I believe in my work and always aim to make my clients happy.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'My Course List',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  CourseCard(
                    title: 'Quels sont les principaux avantages de Flutter?',
                    duration: '27 min',
                    rating: '4.9',
                    imageUrl: 'assets/images/flutter.png',
                  ),
                  CourseCard(
                    title: 'What exactly does a UI designer do?',
                    duration: '21 min',
                    rating: '4.8',
                    imageUrl: 'assets/images/UI.png',
                  ),
                  CourseCard(
                    title: 'History of Ancient Civilizations',
                    duration: '19 min',
                    rating: '4.7',
                    imageUrl: 'assets/images/history.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String duration;
  final String rating;
  final String imageUrl;

  CourseCard({required this.title, required this.duration, required this.rating, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imageUrl, width: 60, height: 60, fit: BoxFit.cover),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Row(
          children: [
            Icon(Icons.access_time, size: 16, color: Colors.grey[600]),
            SizedBox(width: 4),
            Text(duration, style: TextStyle(color: Colors.grey[600])),
            SizedBox(width: 16),
            Icon(Icons.star, size: 16, color: Colors.amber),
            SizedBox(width: 4),
            Text(rating, style: TextStyle(color: Colors.grey[600])),
          ],
        ),
      ),
    );
  }
}


