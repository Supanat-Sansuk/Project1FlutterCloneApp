import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopeeFoodSave extends StatelessWidget {
  const ShopeeFoodSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ร้านที่บันทึกไว้'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                size: 100,
                color: Colors.orange[300],
              ),
              const SizedBox(height: 20),
              Text(
                'แปะหัวใจหน่อย!',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange[300],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'มีคนเคยบอกว่า "ถ้าอิ่มท้อง ก็อิ่มใจด้วย" '
                'แต่ที่หัวใจเพื่อบันทึกร้านโปรดของคุณ!',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ShopeeFoodSave(),
  ));
}
