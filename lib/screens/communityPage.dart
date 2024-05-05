import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
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
          SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Welcome card
                _buildWelcomeCard(),
                SizedBox(height: 20.0),
                // Popular communities
                _buildSectionTitle('Popular Communities'),
                SizedBox(height: 20.0),
                SizedBox(
                  height: 200.0, // Adjust the height as needed
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildCommunityCard('Community 1'),
                      _buildCommunityCard('Community 2'),
                      _buildCommunityCard('Community 3'),
                      // Add more community cards as needed
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                // Regional communities
                _buildSectionTitle('Regional Communities'),
                SizedBox(height: 20.0),
                SizedBox(
                  height: 200.0, // Adjust the height as needed
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildCommunityCard('Region 1'),
                      _buildCommunityCard('Region 2'),
                      _buildCommunityCard('Region 3'),
                      // Add more regional community cards as needed
                    ],
                  ),
                ),
              ],
            ),
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

  Widget _buildWelcomeCard() {
    return Card(
      color: Colors.purple.shade50.withOpacity(0.8), // Semi-transparent white background
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Community Page',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Here you can engage with other members, share your experiences, and participate in discussions.',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildCommunityCard(String communityName) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: 160.0, // Width of each community card
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF8C0944).withOpacity(0.9),
            Color(0xFF8C0944).withOpacity(0.4)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        // Semi-transparent white background
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
        child: Text(
          communityName,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
