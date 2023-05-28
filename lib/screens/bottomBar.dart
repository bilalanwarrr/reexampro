import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:re_exam_pro/constants/app_images.dart';
import 'package:re_exam_pro/constants/color_constants.dart';
import 'package:re_exam_pro/screens/categoryScreen.dart';
import 'package:re_exam_pro/screens/home.dart';
import 'package:re_exam_pro/screens/review.dart';
import 'package:re_exam_pro/screens/settings.dart';
import 'package:re_exam_pro/screens/stats.dart';




class bottomBar extends StatefulWidget {
  const bottomBar({super.key});

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    homeScreen(),
    statsScreen(),
    reviewScreen(),
    categoryScreen(),
    settingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.btnColor,
        fixedColor: AppColors.primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 40,),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.query_stats,size: 40,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reviews, size: 40,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category, size: 40,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 40,),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        
        onTap: _onItemTapped,
      ),
    );
  }
}
