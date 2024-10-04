import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("assets/images/UI.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.1),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'User Interface',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("courseDetails");
                },
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*class CategoryTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ChoiceChip(
          label: Text('All'),
          selected: true,
        ),
        ChoiceChip(
          label: Text('Popular'),
          selected: false,
        ),
        ChoiceChip(
          label: Text('Newest'),
          selected: false,
        ),
      ],
    );
  }
}*/

class CourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        CourseItem1(),
        CourseItem2(),
      ],
    );
  }
}

class CourseItem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage("assets/images/history.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.1),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'History',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),

              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("HistoryDetails");
                },
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  class CourseItem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Container(
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(16),
  image: DecorationImage(
  image: AssetImage("assets/images/flutter.png"),
  fit: BoxFit.cover,
  ),
  ),
  child: Container(
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(16),
  gradient: LinearGradient(
  colors: [
  Colors.black.withOpacity(0.6),
  Colors.black.withOpacity(0.1),
  ],
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
  ),
  ),
  child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
  Text(
  'Flutter',
  style: TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  ),
  ),
    SizedBox(height: 8),
    ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed("historyDetails");
      },
      child: Text('Continue'),
    ),
  ],
  ),
  ),
  ),
  );
  }
}
