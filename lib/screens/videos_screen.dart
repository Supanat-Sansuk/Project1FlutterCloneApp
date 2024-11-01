import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoFullScreenPage extends StatefulWidget {
  @override
  _VideoFullScreenPageState createState() => _VideoFullScreenPageState();
}

class _VideoFullScreenPageState extends State<VideoFullScreenPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos.mp4') 
      ..initialize().then((_) {
        setState(() {});
        _controller.play(); 
      });
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : const Center(child: CircularProgressIndicator()),
          const Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back, color: Colors.black),
                Row(
                  children: [
                    Icon(Icons.search, color: Colors.black),
                    SizedBox(width: 20),
                    Icon(Icons.notifications_outlined, color: Colors.black),
                  ],
                )
              ],
            ),
          ),
          const Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '@ชื่อผู้ใช้',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'คำอธิบายวิดีโอ #แฮชแท็ก',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.favorite_border, color: Colors.white),
                    SizedBox(width: 10),
                    Text('328', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Icon(Icons.comment_outlined, color: Colors.white),
                    SizedBox(width: 10),
                    Text('0', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Icon(Icons.share, color: Colors.white),
                    SizedBox(width: 10),
                    Text('แชร์', style: TextStyle(color: Colors.white)),
                  ],
                )
              ],
            ),
          ),
          const Positioned(
            bottom: 100,
            right: 20,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/10.10.jpg'),
                ),
                SizedBox(height: 10),
                Icon(Icons.add, color: Colors.orange, size: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: VideoFullScreenPage(),
    debugShowCheckedModeBanner: false,
  ));
}
