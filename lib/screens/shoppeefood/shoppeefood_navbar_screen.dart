import 'package:flutter/material.dart';
import 'package:project_1/screens/shoppeefood/shoppeefood_home_screen.dart';
import 'package:project_1/screens/shoppeefood/shoppeefood_save_screen.dart';
import 'package:project_1/screens/shoppeefood/shoppeefoodhistory_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('หน้าหลัก'),
      ),
      body: const Center(
        child: Text('หน้าหลัก'),
      ),
    );
  }
}

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('คำสั่งซื้อ'),
      ),
      body: const Center(
        child: Text('คำสั่งซื้อ'),
      ),
    );
  }
}

class SavedStoresPage extends StatelessWidget {
  const SavedStoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ร้านที่บันทึกไว้'),
      ),
      body: const Center(
        child: Text('ร้านที่บันทึกไว้'),
      ),
    );
  }
}

class NewNavBarScreen extends StatefulWidget {
  const NewNavBarScreen({super.key});

  @override
  State<NewNavBarScreen> createState() => _NewNavBarScreenState();
}

class _NewNavBarScreenState extends State<NewNavBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ShopeeFoodHomeScreen(),
    const ShopeeFoodHistory(),
    const ShopeeFoodSave(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าหลัก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'คำสั่งซื้อ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'ร้านที่บันทึกไว้',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
