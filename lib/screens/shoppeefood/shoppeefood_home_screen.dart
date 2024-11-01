import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopeeFoodHomeScreen extends StatelessWidget {
  const ShopeeFoodHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShopeeFood'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.green[400],
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'วันสุดท้าย! 1 แถม 1',
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'โค้ดส่วนลดสุดพิเศษสำหรับอาหารอร่อย!',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryItem(
                    icon: Icons.discount,
                    label: 'แบรนด์ดังซูเปอร์คุ้ม',
                  ),
                  CategoryItem(
                    icon: Icons.local_offer_outlined,
                    label: 'รวมโค้ดส่วนลด',
                  ),
                  CategoryItem(
                    icon: Icons.fastfood_outlined,
                    label: 'โค้ด 60% อาหารไทย',
                  ),
                  CategoryItem(
                    icon: Icons.local_shipping_outlined,
                    label: 'ร้านใกล้บ้าน ค่าส่ง 0.-',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flash Sale',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '00:29:37',
                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            SingleChildScrollView(
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FlashSaleItem(
                      imageUrl: 'assets/images/rice.jpg',
                      title: 'ข้าวหน้าหมู ลด 33%',
                      price: '฿139',
                      discount: 'ลด 33%',
                    ),
                    FlashSaleItem(
                      imageUrl: 'assets/images/fried_chicken.jpg',
                      title: 'ไก่ทอดลด 36%',
                      price: '฿349',
                      discount: 'ลด 36%',
                    ),
                    FlashSaleItem(
                      imageUrl: 'assets/images/burgerr.jpg',
                      title: 'เซ็ตสุดคุ้ม ซื้อ1แถม1',
                      price: '฿99',
                      discount: 'ลด 50%',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.red),
        const SizedBox(height: 5),
        Text(
          label,
          style: GoogleFonts.lato(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class FlashSaleItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String discount;

  const FlashSaleItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 120,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                discount,
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ShopeeFoodHomeScreen(),
  ));
}
