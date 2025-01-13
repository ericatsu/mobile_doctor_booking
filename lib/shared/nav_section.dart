import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/screens/date&time/select_date_and_time_screen.dart';
import 'package:mobile_doctor_booking/shared/constants.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class NavSection extends StatefulWidget {
  const NavSection({super.key});

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

  final List<NavItem> _navItems = [
    NavItem(icon: Icons.home_outlined, activeIcon: Icons.home, label: 'Home'),
    NavItem(
        icon: Icons.calendar_today_outlined,
        activeIcon: Icons.calendar_today,
        label: 'Schedule'),
    NavItem(
        icon: Icons.message_outlined,
        activeIcon: Icons.message,
        label: 'Messages'),
    NavItem(
        icon: Icons.person_outline, activeIcon: Icons.person, label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.2),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                _navItems.length,
                (index) => _buildNavItem(_navItems[index], index),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(NavItem item, int index) {
    final isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () => setState(() => _selectedIndex = index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? Palette.kPrimaryColor.withValues(alpha: 0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isSelected ? item.activeIcon : item.icon,
              color: isSelected ? Palette.kPrimaryColor : Colors.grey,
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              item.label,
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? Palette.kPrimaryColor : Colors.grey,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem {
  final IconData icon;
  final IconData activeIcon;
  final String label;

  NavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}
