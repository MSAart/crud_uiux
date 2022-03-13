import 'package:flutter/material.dart';
import 'package:uiux/screens/menuhome_screen.dart';
import 'package:uiux/screens/menuprofil_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void selectedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List listPage = [const MenuHome(), const MenuProfil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: selectedIndex,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Profil', icon: Icon(Icons.person))
        ],
      ),
    );
  }
}
