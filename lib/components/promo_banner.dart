import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(10),
      child: const Row(
        children: [
          Text(
            'Shopee Video: แจกกว่า 6 ล้านเหรียญ',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          Spacer(),
          Icon(Icons.chevron_right, color: Colors.white),
        ],
      ),
    );
  }
}
