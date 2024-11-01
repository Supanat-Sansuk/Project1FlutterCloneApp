import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.grey[200],
              child: Image.asset(
                'assets/images/livescreen.jpg', 
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            right: 10,
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/sellbag.png'), 
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MOSSDOOM',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'ผู้ชม 36 คน',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text('ติดตาม'),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.orange,
                  child: const Text(
                    'โค้ดลดสูงสุด 50%',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/bag.jpg', 
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '฿273',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('ซื้อ'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Shopee Live! ขอให้สนุกกับการรับชม',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Wrap(
                    spacing: 8,
                    children: [
                      Text('สวัสดีจ้า 😃', style: TextStyle(color: Colors.black)),
                      Text('อันนี้น่ารัก 😍', style: TextStyle(color: Colors.black)),
                      Text('อันนี้ราคาเท่าไหร่', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  const Divider(color: Colors.grey),
                  Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'พิมพ์ข้อความของคุณ',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.send, color: Colors.orange),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            right: 10,
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/sellbag.png'), 
                  radius: 20,
                ),
                const SizedBox(height: 10),
                IconButton(
                  icon: const Icon(Icons.favorite, color: Colors.red),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.share, color: Colors.white),
                  onPressed: () {},
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
    home: LiveScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
