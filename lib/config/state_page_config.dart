import 'package:flutter/material.dart';
import 'package:social_mobile/screens/friend_screen.dart';
import 'package:social_mobile/screens/home_screen.dart';
import 'package:social_mobile/screens/profile_screen.dart';

class StatePageConfig extends StatefulWidget {
  const StatePageConfig({super.key});

  @override
  State<StatePageConfig> createState() => _StatePageConfigState();
}

class _StatePageConfigState extends State<StatePageConfig> {
  int _currentIndex = 0;

  List<Widget> _currentPage() {
    return [
      const HomeScreen(),
      const FriendScreem(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal'),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _currentPage(),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedIndex: _currentIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.supervised_user_circle_outlined),
            label: 'Friends',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
