import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App_Bar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationList(),
            const Divider(thickness: 1),
            UpdateSection(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget App_Bar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      title: const Text(
        'การแจ้งเตือน',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined, color: Colors.red),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.message_outlined, color: Colors.red),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget NotificationList() {
    return Column(
      children: [
        NotificationItem(
          icon: Icons.local_offer_outlined,
          title: 'โปรโมชั่นจาก Shopee',
          subtitle: 'ShopeeFood เติมโค้ดทุกชั่วโมง! ไม่มีขั้นต่ำ',
          count: 19,
        ),
        NotificationItem(
          icon: Icons.live_tv_outlined,
          title: 'อัปเดตจาก Shopee Live/Video',
          subtitle: '10.10 ลดหนักจัดเต็ม',
          count: 9,
        ),
        NotificationItem(
          icon: Icons.payment_outlined,
          title: 'อัปเดตบริการทางการเงิน',
          subtitle: 'ช้อปปี้เครดิตขอบคุณที่ใช้บริการ',
          count: 5,
        ),
        NotificationItem(
          icon: Icons.update_outlined,
          title: 'อัปเดตจาก Shopee',
          subtitle: 'ความคิดเห็นของคุณสำคัญสำหรับเรา',
          count: 5,
        ),
        NotificationItem(
          icon: Icons.card_giftcard_outlined,
          title: 'Shopee Prizes',
          subtitle: 'รับกรีนไปลุ้นรางวัลสุดพิเศษ!',
          count: 2,
        ),
      ],
    );
  }

  Widget NotificationItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required int count,
  }) {
    return ListTile(
      leading: Stack(
        alignment: Alignment.topRight,
        children: [
          Icon(icon, color: Colors.orange, size: 40),
          if (count > 0)
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red,
              child: Text(
                count.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
        ],
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }

  Widget UpdateSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'อัปเดตคำสั่งซื้อ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        OrderItem(
          title: 'สินค้าถูกจัดส่งแล้ว',
          trackingCode: 'TH242002209409G',
          orderId: '2409298W819DY',
          date: '01-10-2567 13:09',
        ),
        OrderItem(
          title: 'สินค้าถูกจัดส่งแล้ว',
          trackingCode: '900043744',
          orderId: '240909HB58C4D7',
          date: '01-10-2567 11:16',
        ),
        OrderItem(
          title: 'คำสั่งซื้อเสร็จสมบูรณ์แล้ว',
          trackingCode: '240910JFQSUQCX',
          orderId: '240910JFQSUQCX',
          date: '29-10-2024 11:45',
        ),
      ],
    );
  }

  Widget OrderItem({
    required String title,
    required String trackingCode,
    required String orderId,
    required String date,
  }) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('พัสดุหมายเลข: $trackingCode'),
              Text('คำสั่งซื้อ: $orderId'),
              Text('วันที่: $date'),
            ],
          ),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {},
        ),
        const Divider(thickness: 1),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: NotificationScreen(),
  ));
}
