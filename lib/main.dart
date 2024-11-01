
import 'package:flutter/material.dart';
import 'package:project_1/screens/navbar_screen.dart';


void main() {
  runApp(const Project1());
}

class Project1 extends StatefulWidget {
  const Project1({super.key});

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: 'Shoppee',
      home: const NavBarScreen(),
    );
  }
}
