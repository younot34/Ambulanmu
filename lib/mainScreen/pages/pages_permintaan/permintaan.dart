import 'package:drver/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Permintaan extends StatefulWidget {
  const Permintaan({super.key});

  @override
  State<Permintaan> createState() => _PermintaanState();
}

class _PermintaanState extends State<Permintaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: cWhite,
        title: Text(
          'Permintaan',
          style: GoogleFonts.poppins(
            color: cBlack,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }
}
