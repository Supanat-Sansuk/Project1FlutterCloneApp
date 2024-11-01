import 'package:flutter/material.dart';

class ShopeeFoodHistory extends StatelessWidget {
  const ShopeeFoodHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('คำสั่งซื้อของฉัน'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('สถานะทั้งหมด'),
                  DropdownButton<String>(
                    items: const [
                      DropdownMenuItem(value: 'all', child: Text('ทั้งหมด')),
                      DropdownMenuItem(value: 'completed', child: Text('สำเร็จ')),
                    ],
                    onChanged: (value) {},
                    hint: const Text('สถานะทั้งหมด'),
                  ),
                ],
              ),
              const Divider(),
              const OrderItem(
                orderId: '2271232228208640768',
                orderDate: '15 Oct 2024',
                totalPrice: 311.00,
                items: [
                  'ตำปูปลาร้ากุ้งสด',
                  'คอหมูย่าง+น้ำจิ้มแจ่ว',
                  'ข้าวหอมมะลิ',
                ],
              ),
              const Divider(),
              const Text(
                'แสดงรายการคำสั่งซื้อในช่วง 1 ปีที่ผ่านมา',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              const Text(
                'ร้านแนะนำสำหรับคุณ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const RestaurantRecommendation(
                name: 'KFC (บิ๊กซี วงศ์สว่าง)',
                rating: 4.7,
                distance: 2,
                deliveryTime: 25,
                discount: 'โค้ดลด 15%',
                deliveryFee: 'ส่งฟรี 40.-',
                menuDiscount: 'เมนูลด 43%',
              ),
              const RestaurantRecommendation(
                name: 'ดองเว้ยเฮ้ย & กะเพราป๋าละ (ซอยวงศ์สว่าง)',
                rating: 4.8,
                distance: 4,
                deliveryTime: 27,
                discount: 'โค้ดลด 60%',
                deliveryFee: 'ส่งฟรี 40.-',
                menuDiscount: 'เมนูลด 16%',
              ),
              const RestaurantRecommendation(
                name: 'Mr.Shake (บิ๊กซี วงศ์สว่าง)',
                rating: 4.8,
                distance: 3,
                deliveryTime: 25,
                discount: 'โค้ดลด 10%',
                deliveryFee: 'ส่งฟรี 10.-',
                menuDiscount: 'เมนูลด 27%',
              ),
              const RestaurantRecommendation(
                name: 'Santa Fe Steak (บิ๊กซี วงศ์สว่าง)',
                rating: 4.7,
                distance: 3,
                deliveryTime: 25,
                discount: 'โค้ดลด 10%',
                deliveryFee: 'ส่งฟรี 10.-',
                menuDiscount: 'เมนูลด 27%',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String orderId;
  final String orderDate;
  final double totalPrice;
  final List<String> items;

  const OrderItem({
    super.key,
    required this.orderId,
    required this.orderDate,
    required this.totalPrice,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Order ID: $orderId'),
        Text('Date: $orderDate'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: items
                    .map((item) => Text(
                          item,
                          style: const TextStyle(fontSize: 16),
                        ))
                    .toList(),
              ),
            ),
            Column(
              children: [
                Text(
                  '฿$totalPrice',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('สั่งใหม่'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class RestaurantRecommendation extends StatelessWidget {
  final String name;
  final double rating;
  final int distance;
  final int deliveryTime;
  final String discount;
  final String deliveryFee;
  final String menuDiscount;

  const RestaurantRecommendation({
    super.key,
    required this.name,
    required this.rating,
    required this.distance,
    required this.deliveryTime,
    required this.discount,
    required this.deliveryFee,
    required this.menuDiscount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(Icons.restaurant, size: 50),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontSize: 16)),
                  Row(
                    children: [
                      Text('$rating ★', style: const TextStyle(color: Colors.orange)),
                      Text('  $distance km | $deliveryTime min'),
                    ],
                  ),
                  Row(
                    children: [
                      Text(discount, style: const TextStyle(color: Colors.green)),
                      const SizedBox(width: 10),
                      Text(deliveryFee, style: const TextStyle(color: Colors.red)),
                    ],
                  ),
                  Text(menuDiscount, style: const TextStyle(color: Colors.blue)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ShopeeFoodHistory(),
  ));
}
