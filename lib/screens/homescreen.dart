import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "home/Sleep.dart";
import "home/home.dart";
import "home/Meditate.dart";
import "home/music.dart";
import "home/profile.dart";


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> navigationicon = [
    "assets/images/homeicon.png",
    "assets/images/sleepicon.png",
    "assets/images/meditateicon.png",
    "assets/images/music.png",
    "assets/images/afsar.png",
  ];
  List<String> navigationlabel = [
    "Home",
    "Sleep",
    "Meditate",
    "Music",
    "Profile"
  ];

  int _currentIndex = 0;

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List pages = [
    Home(),
    Sleep(),
    Meditate(),
    Music(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        unselectedLabelStyle: TextStyle(
          fontFamily: "Poppins",
          fontSize: 14,
          color: Color.fromRGBO(160, 163, 177, 1),
          fontWeight: FontWeight.w400
        ),
        selectedIconTheme: IconThemeData(
          color: Color.fromRGBO(142, 151, 253, 1)
        ),
        selectedItemColor: Color.fromRGBO(142, 151, 253, 1),
        selectedLabelStyle: TextStyle(
          fontFamily:"Poppins",
          fontSize: 14,
          color: Color.fromRGBO(142, 151, 253, 1),
          fontWeight: FontWeight.w400,
        ),
        elevation: 1,
        onTap: changePage,
        unselectedItemColor: Color.fromRGBO(160, 163, 177, 1),

        items: List.generate(navigationicon.length, (index) {
          return BottomNavigationBarItem(

            icon: Image.asset(navigationicon[index], color: Color.fromRGBO(160, 163, 177, 1)),
            label: navigationlabel[index]

          );
        })
       
      ),
      body: pages[_currentIndex]
    );
  }
}