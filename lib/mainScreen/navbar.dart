import 'package:drver/mainScreen/pages/pages_beranda/beranda.dart';
import 'package:drver/mainScreen/pages/pages_permintaan/permintaan.dart';
import 'package:drver/mainScreen/pages/pages_profil/profile.dart';
import 'package:drver/mainScreen/pages/pages_riwayat/riwayat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../theme.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;
  final screens = [
    const Beranda(),
    const Riwayat(),
    const Permintaan(),
    const Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (states) {
              final isSelected = states.contains(MaterialState.selected);
              return GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: isSelected ? bold : regular,
                color: isSelected ? cOrange : cGrey,
              );
            },
          ),
        ),
        child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          elevation: 1.0,
          height: 80,
          backgroundColor: cWhite,
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) =>
              setState(() => selectedIndex = index),
          animationDuration: const Duration(seconds: 1),
          destinations: [
            NavigationDestination(
              icon: Icon(
                Iconsax.home_15,
                color: cGrey,
              ),
              selectedIcon: Icon(
                Iconsax.home_15,
                color: cOrange,
              ),
              label: 'Beranda',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.task_square5,
                color: cGrey,
              ),
              selectedIcon: Icon(
                Iconsax.task_square5,
                color: cOrange,
              ),
              label: 'Riwayat',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.notification5,
                color: cGrey,
              ),
              selectedIcon: Icon(
                Iconsax.notification5,
                color: cOrange,
              ),
              label: 'Permintaan',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.profile_tick5,
                color: cGrey,
              ),
              selectedIcon: Icon(
                Iconsax.profile_tick5,
                color: cOrange,
              ),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }
}
