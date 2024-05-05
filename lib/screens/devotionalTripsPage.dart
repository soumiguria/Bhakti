import 'package:flutter/material.dart';

class DevotionalTripsPage extends StatefulWidget {
  @override
  _DevotionalTripsPageState createState() => _DevotionalTripsPageState();
}

class _DevotionalTripsPageState extends State<DevotionalTripsPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Devotional Trips',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/images/bhakti_logo.jpg',
            fit: BoxFit.cover,
          ),
          // Content
          ListView(
            padding: EdgeInsets.all(20.0),
            children: [
              DevotionalTripCard(
                title: 'Trip 1',
                description: 'Description of Trip 1',
                imageUrl: 'assets/images/diyas',
              ),
              SizedBox(height: 20.0),
              DevotionalTripCard(
                title: 'Trip 2',
                description: 'Description of Trip 2',
                imageUrl: 'assets/images/diyas',
              ),
              SizedBox(height: 20.0),
              DevotionalTripCard(
                title: 'Trip 3',
                description: 'Description of Trip 3',
                imageUrl: 'assets/images/diyas',
              ),
              // Add more trip cards as needed
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // Center the floating button
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Add your onPressed handler
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Color(0xFF8C0944),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.chat_outlined),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.person_outlined),
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DevotionalTripCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const DevotionalTripCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
