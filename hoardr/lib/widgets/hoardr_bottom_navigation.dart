import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoardr/icons.dart';
import 'package:hoardr/theme/colors.dart';


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
      backgroundColor: AppColors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.house),
          activeIcon: Icon(MyFlutterApp.house, color: AppColors.primary
        ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.heart),
          activeIcon: Icon(Icons.favorite , color: AppColors.primary,),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.add),
          activeIcon: Icon(MyFlutterApp.add, color: AppColors.primary),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.messages),
          activeIcon: Icon(MyFlutterApp.messages, color: AppColors.primary),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(MyFlutterApp.profile),
          activeIcon: Icon(MyFlutterApp.profile, color: AppColors.primary),
          label: 'Profile',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _index,
      selectedItemColor: AppColors.primary,
      onTap: (value) {
        switch (value) {
          case 0:
            context.go('/');
            break;
          case 1:
            context.go('/favorites');
            break;
          case 2:
            context.go('/add');
            break;
          case 3:
            context.go('/messages');
            break;
          case 4:
            context.go('/profile');
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
