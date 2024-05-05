import 'package:flutter/material.dart';

class PanditBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Book Pandit'),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bhakti_logo.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildBookingForm(),
                SizedBox(height: 20.0),
                _buildContactInformation(),
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

  Widget _buildBookingForm() {
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
            'Book a Pandit',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
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
              child: Text('Book Now', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF8C0944),
              )),
        ],
      ),
    );
  }

  Widget _buildContactInformation() {
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
            'Contact Information',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),
          Text(
            'For any inquiries or assistance, please contact us:',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.0),
          Text(
            'Email: panditbooking@example.com',
            textAlign: TextAlign.center,
          ),
          Text(
            'Phone: +123 456 7890',
            textAlign: TextAlign.center,
          ),
        ],
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
