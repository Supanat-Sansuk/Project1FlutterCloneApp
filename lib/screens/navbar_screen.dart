import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_1/screens/live_screen.dart';
import 'package:project_1/screens/mall_screen.dart';
import 'package:project_1/screens/notification_screen.dart';
import 'package:project_1/screens/profile_screen.dart';
import 'package:project_1/screens/videos_screen.dart';

import 'home_screen.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;

            if (index != 5) {
              controller.UserIcon.value = true;
            } else {
              controller.UserIcon.value = !controller.UserIcon.value;
            }

            if (index == 4) {
              controller.NotificationIcon.value = !controller.NotificationIcon.value;
            } else {
              controller.NotificationIcon.value = true; 
            }

            if (index == 3) {
              controller.VideoIcon.value = !controller.VideoIcon.value;
            } else {
              controller.VideoIcon.value = true; 
            }

            if (index == 2) {
              controller.LiveIcon.value = !controller.LiveIcon.value;
            } else {
              controller.LiveIcon.value = true; 
            }

            if (index == 1) {
              controller.MallIcon.value = !controller.MallIcon.value;
            } else {
              controller.MallIcon.value = true; 
            }

            if (index == 0) {
              controller.HomeIcon.value = !controller.HomeIcon.value;
            } else {
              controller.HomeIcon.value = true; 
            }

            if (index == 0) {
              controller.HomeIconText.value = !controller.HomeIconText.value;
            } else {
              controller.HomeIconText.value = true; 
            }
          },
          height: 80,
          elevation: 0,
          destinations: [
            Obx(() => NavigationDestination(
                  icon: Icon(controller.HomeIcon.value ? Icons.home_outlined : Icons.thumb_up),
                  label: controller.HomeIconText.value ? 'หน้าแรก' : 'สินค้าแนะนำ',
                )),
            Obx(() => NavigationDestination(
                  icon: Icon(controller.MallIcon.value ? Iconsax.shopping_bag : Icons.shopping_bag),
                  label: 'Mall',
                )),
            Obx(() => NavigationDestination(
                  icon: Icon(controller.LiveIcon.value ? Icons.video_camera_front_outlined : Icons.video_camera_front),
                  label: 'Live',
                )),
            Obx(() => NavigationDestination(
                  icon: Icon(controller.VideoIcon.value ? Icons.play_arrow_outlined : Icons.play_arrow),
                  label: 'Videos',
                )),
            Obx(() => NavigationDestination(
                  icon: Icon(controller.NotificationIcon.value ? Icons.notifications_active_outlined : Icons.notifications_active),
                  label: 'การแจ้งเตือน',
                )),
            Obx(() => NavigationDestination(
                  icon: Icon(controller.UserIcon.value ? Iconsax.user : Icons.person),
                  label: 'ฉัน',
                )),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final Rx<bool> UserIcon = true.obs; 
  final Rx<bool> NotificationIcon = true.obs; 
  final Rx<bool> VideoIcon = true.obs; 
  final Rx<bool> LiveIcon = true.obs; 
  final Rx<bool> MallIcon = true.obs; 
  final Rx<bool> HomeIcon = true.obs; 
  final Rx<bool> HomeIconText = true.obs; 
  
  final screens = [
    const HomeScreen(),
    const MallScreen(),
    const LiveScreen(),
    VideoFullScreenPage(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
}
