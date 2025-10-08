import 'package:flutter/material.dart';
import 'package:movie_explorer_app/screens/home_page.dart';
import 'package:movie_explorer_app/screens/profile_page.dart';
import 'package:movie_explorer_app/screens/saved_film_page.dart';
import 'package:movie_explorer_app/screens/search_page.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  List pages = [
    HomePage(),
    SearchPage(),
    SavedFilmPage(),
    ProfilePage()
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Container(child: pages[selectedIndex]),
      bottomNavigationBar: StylishBottomBar(
        items: [
          BottomBarItem(icon: Icon(Icons.home), title: Text("Home"),backgroundColor: Color(0xff590001)),
          BottomBarItem(icon: Icon(Icons.search), title: Text("Search"),backgroundColor: Color(0xff590001)),
          BottomBarItem(icon: Icon(Icons.save), title: Text("Saved"),backgroundColor: Color(0xff590001)),
          BottomBarItem(icon: Icon(Icons.person), title: Text("Profile"),backgroundColor: Color(0xff590001)),
        ],
        option: AnimatedBarOptions(iconStyle: IconStyle.animated),
        onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
        },

      ),
    );
  }
}
