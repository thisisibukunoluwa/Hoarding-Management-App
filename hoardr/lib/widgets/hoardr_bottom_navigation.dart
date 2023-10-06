import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class HoardrBottomNavigation extends StatefulWidget {
  const HoardrBottomNavigation({super.key});

  @override
  State<HoardrBottomNavigation> createState() =>
      _HoardrBottomNavigationState();
}

class _HoardrBottomNavigationState extends State<HoardrBottomNavigation> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: bottomNavigationBarColor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          activeIcon: Icon(Icons.favorite),
          label: 'Games',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsIcons.youtube),
          activeIcon: Icon(IconsIcons.youtube),
          label: 'New & Hot',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsIcons.smile),
          activeIcon: Icon(IconsIcons.smile),
          label: 'Fast Laughs',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsIcons.download),
          activeIcon: Icon(IconsIcons.download),
          label: 'Downloads',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _index,
      selectedItemColor: Colors.white,
      onTap: (value) {
        switch (value) {
          case 0:
            context.go('/home');
            break;
          case 2:
            context.go('/newandhot');
            break;
          default:
        }
        setState(() {
          _index = value;
        });
      },
    );
  }
}
