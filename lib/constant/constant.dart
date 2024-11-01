import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const bgPrimaryColor = Colors.black;
const bgSecondaryColor = Color.fromARGB(255, 148, 148, 148);

const textPrimaryColor = Colors.white;
const textSecondaryColor = Colors.black;

const iconPrimaryColor = Colors.amber;
const iconSecondaryColor = Colors.white;

final textTitle = GoogleFonts.lato(
  fontSize: 20,
  color: textPrimaryColor,
  fontWeight: FontWeight.w600,
);

final textSubTitle = GoogleFonts.lato(
  fontSize: 14,
  color: Colors.grey,
  fontWeight: FontWeight.w400,
);

final textBtn = GoogleFonts.lato(
  fontSize: 18,
  color: textSecondaryColor,
  fontWeight: FontWeight.w400,
);

final textMenu = GoogleFonts.lato(
  fontSize: 16,
  color: textPrimaryColor,
  fontWeight: FontWeight.w400,
);

// สร้างไอเทมของเมนู
Widget MenuItem(IconData icon, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, size: 30, color: Colors.black54),
      const SizedBox(height: 8),
      Text(
        label,
        style: GoogleFonts.lato(fontSize: 12, color: Colors.black),
      ),
    ],
  );
}

// ส่วนหัวของเมนู
Widget SectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Text(
      title,
      style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}

Widget SectionMontlyPromotion(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Text(
      title,
      style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}

Widget ActivityItem(String title, IconData icon) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.orange),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
  );
}
