import 'package:flutter/material.dart';

class MantraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color themeColor = Color(0xFF8C0944);

    return Scaffold(
      appBar: CustomAppBar(title: 'Mantras', themeColor: Colors.black),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMantraSection('North Region Mantras', themeColor),
                SizedBox(height: 20.0),
                _buildMantraSection('South Region Mantras', themeColor),
                SizedBox(height: 20.0),
                _buildMantraSection('East Region Mantras', themeColor),
                SizedBox(height: 20.0),
                _buildMantraSection('West Region Mantras', themeColor),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: themeColor,
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

  Widget _buildMantraSection(String title, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.0),
        SizedBox(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildMantraContainer('Mantra 1', color),
              _buildMantraContainer('Mantra 2', color),
              _buildMantraContainer('Mantra 3', color),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMantraContainer(String mantra, Color color) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      width: 200.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.9), color.withOpacity(0.2)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Text(
          mantra,
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

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color themeColor;

  const CustomAppBar({Key? key, required this.title, required this.themeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: themeColor,
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
