import 'package:flutter/material.dart';
import 'package:project_1/screens/home_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('รถเข็น (79)'),
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
          },
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('แก้ไข', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCartItem(
              context,
              shopName: 'MOBI GARDEN',
              items: [
                _buildCartProductItem(
                  imageUrl: 'assets/images/chair.jpg',
                  title: 'MOBI GARDEN เก้าอี้ปิกนิก แบบพับได้...',
                  price: '฿901',
                  oldPrice: '฿1,635',
                  discount: 'ลด 31%',
                  quantity: 1,
                ),
                _buildCartProductItem(
                  imageUrl: 'assets/images/tent.jpg',
                  title: 'Mobi GARDEN เต็นท์ผ้าฝ้าย...',
                  price: '฿7,179',
                  oldPrice: '฿9,504',
                  discount: 'ลด 10%',
                  quantity: 1,
                ),
              ],
            ),
            _buildCouponSection(),
            _buildCartItem(
              context,
              shopName: 'JISULIFE Official Shop',
              items: [
                _buildCartProductItem(
                  imageUrl: 'assets/images/fan.jpg',
                  title: 'Billkin X JisuLife พัดลม...',
                  price: '฿649',
                  oldPrice: '฿1,400',
                  discount: 'Flash Sale',
                  quantity: 1,
                  countdown: '17:59:59',
                ),
              ],
            ),
            _buildVoucherSection(),
            _buildCheckoutSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem(BuildContext context,
      {required String shopName, required List<Widget> items}) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              Text(
                'Mall',
                style: TextStyle(color: Colors.red[700]),
              ),
              const SizedBox(width: 5),
              Text(shopName, style: const TextStyle(fontWeight: FontWeight.bold)),
              const Spacer(),
              TextButton(onPressed: () {}, child: const Text('แก้ไข')),
            ],
          ),
          Column(children: items),
        ],
      ),
    );
  }

  Widget _buildCartProductItem({
    required String imageUrl,
    required String title,
    required String price,
    required String oldPrice,
    required String discount,
    int quantity = 1,
    String? countdown,
  }) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        Image.asset(imageUrl, width: 80, height: 80, fit: BoxFit.cover),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, maxLines: 2, overflow: TextOverflow.ellipsis),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(price, style: const TextStyle(color: Colors.red)),
                    const SizedBox(width: 5),
                    Text(
                      oldPrice,
                      style: const TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    ),
                    const Spacer(),
                    if (countdown != null)
                      Text(
                        'Flash Sale $countdown',
                        style: const TextStyle(color: Colors.red, fontSize: 12),
                      ),
                  ],
                ),
                Text(discount, style: const TextStyle(color: Colors.orange)),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {},
                    ),
                    Text('$quantity'),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCouponSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          const Icon(Icons.percent, color: Colors.red),
          const SizedBox(width: 10),
          const Text('รับโค้ดลดสูงสุด ฿700'),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text('ใหม่', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  Widget _buildVoucherSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const Row(
        children: [
          Icon(Icons.card_giftcard, color: Colors.orange),
          SizedBox(width: 10),
          Text('โค้ดส่วนลดของ Shopee'),
          Spacer(),
          Text('กดใช้โค้ด', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildCheckoutSection() {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (value) {}),
          const Text('ทั้งหมด'),
          const Spacer(),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('รวม ฿0', style: TextStyle(fontSize: 16)),
              Text('คุณยังไม่ได้เลือกสินค้า', style: TextStyle(color: Colors.grey)),
            ],
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: const Text('ชำระเงิน (0)'),
          ),
        ],
      ),
    );
  }
}
