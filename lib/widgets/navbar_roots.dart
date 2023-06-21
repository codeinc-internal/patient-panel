import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:patient_panel/Screen/home_screen.dart";
import "package:patient_panel/Screen/message_screen.dart";
import "package:patient_panel/Screen/schedule_screen.dart";
import "package:patient_panel/Screen/setting_screen.dart";

class NavbarRoots extends StatefulWidget {
  const NavbarRoots({super.key});

  @override
  State<NavbarRoots> createState() => _NavbarRootsState();
}

class _NavbarRootsState extends State<NavbarRoots> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    // Home screen
    Home(),
    // Message Screen
    MessageScreen(),
    // Schedule Screen
    ScheduleScreen(),
    // Settings Screen
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: "Messages",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: "Schedules",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ],
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF0000FF),
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
        ),
      ),
    );
  }
}
