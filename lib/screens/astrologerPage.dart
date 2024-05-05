import 'package:flutter/material.dart';

class AstrologerPage extends StatelessWidget {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Consult Astrologer'),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bhakti_logo.jpg',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildConsultationForm(),
                SizedBox(height: 20.0),
                _buildTestimonialsCard(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_outlined),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConsultationForm() {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Book a Consultation',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
            ),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Phone',
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {},
            child: Text('Book Now'),
          ),
        ],
      ),
    );
  }

  Widget _buildTestimonialsCard() {
    List<String> testimonials = [
      'Great consultation, helped me a lot.',
      'Highly recommended! Very accurate predictions.',
      'I\'ve been consulting regularly, and I\'m very satisfied.'
    ];

    return Card(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      color: Colors.white.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Testimonials',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.0),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: testimonials.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    testimonials[index],
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
