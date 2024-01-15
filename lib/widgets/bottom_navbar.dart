import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedPageIndex = 0;

  ColorFilter? _getColorFilter(int index) {
    return _selectedPageIndex == index
        ? const ColorFilter.mode(
            Color.fromRGBO(114, 3, 255, 1),
            BlendMode.srcIn,
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 0,
      currentIndex: _selectedPageIndex,
      onTap: (value) {
        setState(() {
          _selectedPageIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/grid.svg',
            colorFilter: _getColorFilter(0),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/shopping_cart_gray.svg',
            colorFilter: _getColorFilter(1),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/user.svg',
            colorFilter: _getColorFilter(2),
          ),
          label: '',
        ),
      ],
    );
  }
}
