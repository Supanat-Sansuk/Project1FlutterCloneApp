import 'package:flutter/material.dart';

class MallScreen extends StatelessWidget {
  const MallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopee Mall'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.message_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Promo Banner Section
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(15),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shopee Mall',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ลดสูงสุด 70% + โค้ดลดเพิ่มสูงสุด ฿1,000.-',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.star, color: Colors.white),
                      Icon(Icons.check_circle_outline, color: Colors.white),
                      Icon(Icons.access_time, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCategoryItem(Icons.new_releases_outlined, 'ดีลพิเศษ\nจากแบรนด์'),
                  _buildCategoryItem(Icons.local_shipping_outlined, 'โค้ดส่งฟรี*'),
                  _buildCategoryItem(Icons.percent_outlined, 'ผ่อน 0%'),
                  _buildCategoryItem(Icons.card_membership_outlined, 'สิทธิพิเศษ\nสมาชิก'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'โปรโมชั่น Shopee Mall',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildPromotionCard('Shopee Premium', 'ลดพิเศษ\nฉลองวันเกิด'),
                      _buildPromotionCard('Shopee Mall', '10.10\nแบรนด์ดัง'),
                      _buildPromotionCard('Shopee Mall', 'แบรนด์ดัง\nช้อปรับเงินคืน'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ดีลเดือดส่งท้าย',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    '฿2,000.-',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.red),
        const SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildPromotionCard(String title, String subtitle) {
    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 100,
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: MallScreen()));
}
