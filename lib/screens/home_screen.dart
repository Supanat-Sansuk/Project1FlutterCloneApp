import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/cart_screen.dart';
import '../screens/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: 'ค้นหาใน Shopee (Ex. กระเป๋า)',
            hintStyle: const TextStyle(color: Colors.white),
            prefixIcon: const Icon(Icons.search, color: Colors.white),
            filled: true,
            fillColor: Colors.red[300],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),
              );
            }
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.message_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              padding: const EdgeInsets.all(15),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '10.10 ดีลเดือด 4 เวลาเด็ด',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '00:00 | 12:00 | 18:00 | 21:00 น.',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        'ลดสูงสุด 80%',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            WalletCoinsSection(),
            const SizedBox(height: 10),
            ServiceSection(),
            const SizedBox(height: 10),
            PromotionsSection(),
            const SizedBox(height: 20),
            ShopeeLiveSection(),
            const SizedBox(height: 20),
            FlashSaleSection(),
            const SizedBox(height: 20),
            ShopeeVideoSection(),
          ],
        ),
      ),
    );
  }

  Widget ShopeeLiveSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SHOPEE LIVE',
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'ดูเพิ่มเติม',
                  style: GoogleFonts.lato(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ShopeeLiveItem(
                  imageUrl: 'assets/images/live_1.jpg',
                  title: 'คอลใหม่ โปรโมชั่นในไลฟ์'),
              ShopeeLiveItem(
                  imageUrl: 'assets/images/live_2.jpg', title: 'มาแจกโค้ด'),
              ShopeeLiveItem(
                  imageUrl: 'assets/images/live_3.jpg', title: '40% ลดวันนี้'),
            ],
          ),
        ),
      ],
    );
  }

  Widget ShopeeLiveItem({required String imageUrl, required String title}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(imageUrl, fit: BoxFit.cover, width: 120, height: 120),
              Positioned(
                top: 5,
                left: 5,
                child: Container(
                  color: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  child: const Text('LIVE',
                      style: TextStyle(color: Colors.white, fontSize: 10)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: GoogleFonts.lato(fontSize: 12),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget WalletCoinsSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          WalletCoinsItem(
            title: '฿ 0.00',
            subtitle: 'เก็บคูปอง',
            icon: Icons.account_balance_wallet_outlined,
          ),
          WalletCoinsItem(
            title: '10.00',
            subtitle: 'Shopee Coins',
            icon: Icons.monetization_on_outlined,
          ),
          WalletCoinsItem(
            title: 'โค้ดส่วนลด',
            subtitle: 'ใช้เลย',
            icon: Icons.local_offer_outlined,
          ),
        ],
      ),
    );
  }

  Widget WalletCoinsItem({
    required String title,
    required String subtitle,
    required IconData icon,
  }) {
    return Column(
      children: [
        Icon(icon, color: Colors.orange),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  Widget ServiceSection() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ServiceItem(icon: Icons.fastfood_outlined, label: 'ShopeeFood'),
        ServiceItem(
            icon: Icons.local_shipping_outlined, label: 'ส่งฟรี + โค้ดลด'),
        ServiceItem(icon: Icons.new_releases_outlined, label: 'ช้อปปิ้งทัวร์'),
        ServiceItem(icon: Icons.support_agent_outlined, label: 'E-Service'),
        ServiceItem(icon: Icons.stars_outlined, label: 'แฟชั่นเฟสติวัล'),
        ServiceItem(icon: Icons.videocam_outlined, label: 'Shopee Prizes'),
        ServiceItem(icon: Icons.shopping_bag_outlined, label: '#Shopee10.10'),
        ServiceItem(icon: Icons.bolt_outlined, label: 'โปรแรง'),
      ],
    );
  }

  Widget ServiceItem({required IconData icon, required String label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 30, color: Colors.red),
        const SizedBox(height: 5),
        Text(label,
            textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget PromotionsSection() {
    return Container(
      color: Colors.orange[50],
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          FreeShippingBanner(),
          const SizedBox(height: 10),
          VoucherBanner(),
        ],
      ),
    );
  }

  Widget FreeShippingBanner() {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(10),
      child: const Row(
        children: [
          Text(
            'ส่งฟรี ร้านค้าใกล้คุณ',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          Spacer(),
          Icon(Icons.local_shipping, color: Colors.white),
        ],
      ),
    );
  }

  Widget VoucherBanner() {
    return Container(
      color: Colors.red[100],
      padding: const EdgeInsets.all(10),
      child: const Row(
        children: [
          Icon(Icons.local_offer, color: Colors.red),
          SizedBox(width: 5),
          Text(
            'ส่วนลด 2,000.-',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(Icons.chevron_right, color: Colors.red),
        ],
      ),
    );
  }

  Widget FlashSaleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'FLASH SALE',
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              TextButton(
                onPressed: () {},
                child: Text('ดูทั้งหมด',
                    style: GoogleFonts.lato(color: Colors.red)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              FlashSaleItem(
                  imageUrl: 'assets/images/item1.jpg',
                  title: 'สินค้าลด 20%',
                  price: '฿295'),
              FlashSaleItem(
                  imageUrl: 'assets/images/item2.jpg',
                  title: 'ลด 30%',
                  price: '฿139'),
              FlashSaleItem(
                  imageUrl: 'assets/images/item3.jpg',
                  title: 'ลด 40%',
                  price: '฿349'),
            ],
          ),
        ),
      ],
    );
  }

  Widget FlashSaleItem(
      {required String imageUrl,
      required String title,
      required String price}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl, fit: BoxFit.cover, width: 120, height: 80),
          const SizedBox(height: 5),
          Text(
            title,
            style: GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          Text(
            price,
            style:
                const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget ShopeeVideoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SHOPEE VIDEO',
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              TextButton(
                onPressed: () {},
                child: Text('ดูเพิ่มเติม',
                    style: GoogleFonts.lato(color: Colors.red)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ShopeeVideoItem(imageUrl: 'assets/images/moniter.jpg'),
              ShopeeVideoItem(imageUrl: 'assets/images/mouse.jpg'),
              ShopeeVideoItem(imageUrl: 'assets/images/inear.jpg'),
            ],
          ),
        ),
      ],
    );
  }

  Widget ShopeeVideoItem({required String imageUrl}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 120,
      child: Image.asset(imageUrl, fit: BoxFit.cover),
    );
  }

}

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}
