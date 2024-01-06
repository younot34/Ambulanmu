import 'package:drver/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../authentication/login_screen.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  double ratingsNumber = 0;
  String titleStarRating = "Baik";

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
          'Profil',
          style: GoogleFonts.poppins(
            color: cBlack,
            fontWeight: semibold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              //Nama
              Text(
                'Dupir',
                style: GoogleFonts.poppins(
                  fontSize: 48,
                  color: cBlack,
                  fontWeight: bold,
                ),
              ),

              // Rating
              SmoothStarRating(
                rating: ratingsNumber,
                allowHalfRating: false,
                starCount: 5,
                color: cOrange,
                borderColor: cOrange,
                size: 24,
              ),

              const SizedBox(height: 12.0),

              // Keterangan Rating
              Text(
                titleStarRating,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: semibold,
                  color: cBlack,
                ),
              ),

              // Informasi Driver
              Container(
                margin: const EdgeInsets.only(top: 32),
                padding: const EdgeInsets.all(16),
                height: 177,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: cWhite,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: cGrey,
                      blurRadius: 0.1,
                      spreadRadius: 0.1,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi Driver',
                      style: GoogleFonts.poppins(
                        color: cBlack,
                        fontSize: 16,
                        fontWeight: semibold,
                      ),
                    ),
                    const SizedBox(height: 9),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: cGrey,
                    ),
                    const SizedBox(height: 9),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nomor Telepon',
                          style: GoogleFonts.poppins(
                            color: cGrey,
                          ),
                        ),
                        Text(
                          '6969696966969',
                          style: GoogleFonts.poppins(
                            color: cBlack,
                            fontSize: 16,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.poppins(
                            color: cGrey,
                          ),
                        ),
                        Text(
                          'aww@gmail.com',
                          style: GoogleFonts.poppins(
                            color: cBlack,
                            fontSize: 16,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Informasi Mobil
              Container(
                margin: const EdgeInsets.only(top: 18, bottom: 32),
                padding: const EdgeInsets.all(16),
                height: 234,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: cWhite,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: cGrey,
                      blurRadius: 0.1,
                      spreadRadius: 0.1,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi Mobil',
                      style: GoogleFonts.poppins(
                        color: cBlack,
                        fontSize: 16,
                        fontWeight: semibold,
                      ),
                    ),
                    const SizedBox(height: 9),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: cGrey,
                    ),
                    const SizedBox(height: 9),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Plat Nomor',
                          style: GoogleFonts.poppins(
                            color: cGrey,
                          ),
                        ),
                        Text(
                          'MMK 884 PPK',
                          style: GoogleFonts.poppins(
                            color: cBlack,
                            fontSize: 16,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jenis',
                          style: GoogleFonts.poppins(
                            color: cGrey,
                          ),
                        ),
                        Text(
                          'Mobil Penjahat',
                          style: GoogleFonts.poppins(
                            color: cBlack,
                            fontSize: 16,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tipe',
                          style: GoogleFonts.poppins(
                            color: cGrey,
                          ),
                        ),
                        Text(
                          'Abu2',
                          style: GoogleFonts.poppins(
                            color: cBlack,
                            fontSize: 16,
                            fontWeight: semibold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 60,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => const LoginScreen()));
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: cOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    'Logout',
                    style: GoogleFonts.poppins(
                      color: cWhite,
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
