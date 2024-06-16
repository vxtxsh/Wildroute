

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:wild_route/Forms/question.dart';
import 'package:wild_route/rewards/rewardscreen.dart';
import 'package:wild_route/screens/chat.dart';
import 'package:wild_route/screens/profile.dart';
import 'package:wild_route/widgets/destination_carousel.dart';
import 'package:wild_route/widgets/hotel_carousel.dart';

// Team Milky Way
// Vitesh, Sharika, Sneha, Sitikanth

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;
  int _selectedIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.hiking,
    FontAwesomeIcons.campground,
    FontAwesomeIcons.water,
    FontAwesomeIcons.mountain,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Theme.of(context).colorScheme.secondary : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index ? Theme.of(context).primaryColor : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 23, 23),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What would you like to do?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.asMap().entries.map(
                    (MapEntry map) => _buildIcon(map.key),
              ).toList(),
            ),
            SizedBox(height: 20.0),
             Divider(
              color: Colors.grey,
              height: 40.0,
              thickness: 1.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
            DestinationCarousel(),
             Divider(
              color: Colors.grey,
              height: 20.0,
              thickness: 1.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
            HotelCarousel(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RewardsScreen()),
                      );
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 133, 60, 34),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10.0,
            child: Container(
              height: 60.0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 133, 60, 34),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.search, color: Colors.white),
                    onPressed: () {
                      setState(() {
                        _currentTab = 0;
                      });
                       Navigator.pushNamed(context, '/questionnaire');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.home, color: Colors.white),
                    onPressed: () {
                      setState(() {
                        _currentTab = 1;
                      });
                    },
                  ),
                  SizedBox(width: 30.0), 
                  IconButton(
                    icon: Icon(Icons.chat_bubble, color: Colors.white),
                    onPressed: () {
                      setState(() {
                        _currentTab = 2;
                      });Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cahc()),
                      );
                    },
                  ),
                  IconButton(
                    icon: CircleAvatar(
                      radius: 15.0,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    onPressed: () {
                      setState(() {
                        _currentTab = 3;
                      });Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
