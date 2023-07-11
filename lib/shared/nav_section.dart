import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class NavSection extends StatefulWidget {
  const NavSection({
    super.key,
  });

  @override
  State<NavSection> createState() => _NavSectionState();
}

class _NavSectionState extends State<NavSection> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const SelectDateAndTimeScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = SizeQuery(context);
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child: Container(
          color: Colors.transparent,
          width: mediaQuery.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                navIcon(CupertinoIcons.home, 0),
                navIcon(CupertinoIcons.clock, 1),
                navIcon(CupertinoIcons.chat_bubble, 2),
                navIcon(CupertinoIcons.person, 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navIcon(IconData icon, int index) {
    final mediaQuery = SizeQuery(context);
    return Container(
      height: mediaQuery.height * 0.06,
      width: mediaQuery.width * 0.11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: _selectedIndex == index
            ? Palette.kPrimaryColor
            : Colors.transparent,
        border: Border.all(color: Colors.transparent),
      ),
      child: IconButton(
        icon: Icon(icon, size: 20.0),
        color: Colors.black,
        onPressed: () {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
