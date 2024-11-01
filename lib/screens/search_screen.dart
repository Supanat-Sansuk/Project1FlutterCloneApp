import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'กระเป๋า',
            hintStyle: GoogleFonts.lato(color: Colors.grey),
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune, color: Colors.red),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        radius: 30,
                        backgroundImage: const AssetImage('assets/images/10.10.jpg'), 
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bostanten Bag Men&Women',
                              style: GoogleFonts.lato(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.store_mall_directory, size: 18, color: Colors.red),
                                Text(
                                  ' Mall ',
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    color: Colors.red,
                                  ),
                                ),
                                Text(
                                  '4.9 · 138.8k รีวิว · Ad',
                                  style: GoogleFonts.lato(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'ไปยังร้านค้า',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 60,
                        color: Colors.red[50],
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('฿100', style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red)),
                              const Text('ส่วนลด', style: TextStyle(color: Colors.red, fontSize: 14)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _ProductImage(imageUrl: 'assets/images/bag1.jpg', price: '฿260', discount: '63%'), 
                              _ProductImage(imageUrl: 'assets/images/bag2.jpg', price: '฿399', discount: '56%'), 
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _FilterButton(label: 'เกี่ยวข้อง'),
                  _FilterButton(label: 'ล่าสุด'),
                  _FilterButton(label: 'สินค้าขายดี'),
                  _FilterButton(label: 'ราคา'),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _TagButton(label: 'Shopee Mall'),
                    _TagButton(label: 'ร้านแนะนำ'),
                    _TagButton(label: 'Shopee Choice'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const _ProductCard(
                    imageUrl: 'assets/images/bagcamp.jpg', 
                    title: 'กระเป๋าแคมป์ปิ้ง กระเป๋าเดินทาง',
                    price: '฿95',
                    discount: 'ลด 57%',
                    rating: '4.8',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String discount;

  const _ProductImage({
    required this.imageUrl,
    required this.price,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 100,
      child: Column(
        children: [
          Image.asset(imageUrl, width: 100, height: 80, fit: BoxFit.cover),
          const SizedBox(height: 5),
          Text(price, style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold)),
          Text('ลด $discount', style: const TextStyle(fontSize: 12, color: Colors.red)),
        ],
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final String label;

  const _FilterButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        label,
        style: GoogleFonts.lato(fontSize: 14, color: Colors.black),
      ),
    );
  }
}

class _TagButton extends StatelessWidget {
  final String label;

  const _TagButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.red[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: GoogleFonts.lato(fontSize: 12, color: Colors.red),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String discount;
  final String rating;

  const _ProductCard({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.discount,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl, height: 120, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.lato(fontSize: 14),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5),
                Text(
                  price,
                  style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.orange),
                    Text(rating, style: GoogleFonts.lato(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: SearchScreen(),
  ));
}
