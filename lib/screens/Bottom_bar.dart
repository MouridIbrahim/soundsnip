// BottomBar.dart - Clean, simple, just like your todo app
import 'package:flutter/material.dart';
import 'package:soundsnip/screens/Download_page.dart';
import 'package:soundsnip/screens/Home_Page.dart';
import 'package:soundsnip/screens/Playlist_page.dart';
import 'package:soundsnip/screens/Settings_Page.dart';
import 'package:soundsnip/themes.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Homepage(),      // Home Screen
    PlaylistPage(),  // Playlists
    DownloadPage(),  // Downloads
    SettingsPage(),  // Settings
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // Important for 4 items
        selectedItemColor: AppColors.textColor,     // From your theme
        unselectedItemColor: AppColors.lightText,   // From your theme
        backgroundColor: AppColors.tirthColor,  // Your custom background color
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(Icons.music_note),
            ),
            label: 'Playlists',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(Icons.download),
            ),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(Icons.settings),
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}