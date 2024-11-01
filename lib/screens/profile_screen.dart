import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_1/screens/shoppeefood/shoppeefood_navbar_screen.dart';

import '../constant/constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), 
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
              color: const Color.fromARGB(255, 212, 67, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(12), 
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5), 
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.shop4,
                            color: Colors.black,
                          ),
                          label: Text(
                            'เริ่มการขาย',
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Iconsax.setting_2,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Iconsax.messages4,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person,
                            size: 45, color: Color.fromARGB(255, 212, 67, 0)),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Supanat Sansuk',
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Silver',
                                      style: GoogleFonts.lato(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Icon(
                                      Icons.chevron_right,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '4 ผู้ติดตาม ',
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                              Text(
                                '18 กำลังติดตาม',
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'การซื้อของฉัน',
                    style: GoogleFonts.lato(color: Colors.black),
                  ),
                  const Spacer(),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      'ดูประวัติการซื้อ',
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  GridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1,
                    ),
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.wallet_sharp, size: 30),
                            const SizedBox(height: 5),
                            Text(
                              'ที่ต้องชำระ',
                              style: GoogleFonts.lato(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Iconsax.box, size: 30),
                            const SizedBox(height: 5),
                            Text('ที่ต้องจัดส่ง',
                                style: GoogleFonts.lato(fontSize: 12)),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Iconsax.truck, size: 30),
                            const SizedBox(height: 5),
                            Text('ที่ต้องได้รับ',
                                style: GoogleFonts.lato(fontSize: 12)),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.stars_outlined, size: 30),
                            const SizedBox(height: 5),
                            Text('ให้คะแนน',
                                style: GoogleFonts.lato(fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const Divider(), 
                  ListTile(
                    title: Row(
                      children: [
                        const Icon(
                          Icons.food_bank_outlined,
                          size: 21,
                          color: Color.fromARGB(255, 212, 67, 0),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'ShoppeeFood',
                          style: GoogleFonts.lato(color: Colors.black),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.chevron_right,
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewNavBarScreen(),
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: Row(
                      children: [
                        const SizedBox(width: 4),
                        const Icon(
                          Icons.phonelink_ring,
                          size: 17,
                          color: Colors.green,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'E-Service / Evoucher',
                          style: GoogleFonts.lato(color: Colors.black),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.chevron_right,
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                  const Divider(),
                  SectionMontlyPromotion('แจกโค้ดส่งฟรี*'),
                  GridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1,
                    ),
                    children: [
                      Container(
                        margin: const EdgeInsets.all(4.0), 
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/10.10.jpg'),
                              radius: 30, 
                            ),
                            SizedBox(
                                height: 4), 
                            Text(
                              'แจกโค้ดส่งฟรี*', 
                              style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      Colors.black), 
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(4.0),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/fashion.jpg'),
                              radius: 30,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'แฟชั่นเฟสติวัล',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(4.0),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/video.jpg'),
                              radius: 30,
                            ),
                            SizedBox(height: 4),
                            Text(
                              'แจกโค้ดลดทุกวิดีโอ',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(4.0),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 255, 60, 0),
                              radius: 30,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/student.png'),
                                radius: 30,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Student Club',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const Divider(),
                  SectionTitle('My Wallet'),
                  GridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1,
                    ),
                    children: [
                      MenuItem(Iconsax.wallet, 'ShopeePay'),
                      MenuItem(Iconsax.coin, 'Shopee Coins'),
                      MenuItem(Icons.wallet, 'My SPayLater'),
                      MenuItem(Icons.confirmation_num_outlined, 'โค้ดส่วนลด'),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      SectionTitle('บริการทางการเงิน'),
                      const Spacer(),
                      Text(
                        'ดูเพิ่มเติม',
                        style: GoogleFonts.lato(color: Colors.black),
                      ),
                      const Icon(
                        Icons.chevron_right,
                      ),
                    ],
                  ),
                  ListTile(
                    leading: const Icon(Iconsax.security),
                    title: const Text('Insurance'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  Row(
                    children: [
                      SectionTitle('กิจกรรมอื่น ๆ'),
                      const Spacer(),
                      Text(
                        'ดูทั้งหมด',
                        style: GoogleFonts.lato(color: Colors.black),
                      ),
                      const Icon(
                        Icons.chevron_right,
                      ),
                    ],
                  ),
                  GridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 คอลัมน์
                      childAspectRatio: 1.5, // สัดส่วนของกล่อง
                    ),
                    children: [
                      ActivityItem('สิ่งที่ฉันถูกใจ', Icons.favorite),
                      ActivityItem('โปรแกรม Affiliate', Icons.business),
                      ActivityItem('Shopee Prizes', Icons.card_giftcard),
                      ActivityItem('แพ็กเกจโค้ดช้อปปี้', Icons.receipt),
                      ActivityItem('ShopeeFood', Icons.food_bank_outlined),
                      ActivityItem('ซื้ออีกครั้ง', Icons.shopping_bag_outlined),
                    ],
                  ),

                  SectionTitle('ช่วยเหลือ'),
                  ListTile(
                    leading: const Icon(Icons.help),
                    title: const Text('ศูนย์ช่วยเหลือ'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.chat),
                    title: const Text('Chat กับเรา'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}