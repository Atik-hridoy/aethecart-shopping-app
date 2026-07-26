import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';
import '../../ai_chat/view/ai_chat_view.dart';
import '../../explore/view/explore_view.dart';
import '../../profile/view/profile_view.dart';
import '../widget/home_app_bar.dart';
import '../widget/home_bottom_nav.dart';
import '../widget/home_tab.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: const HomeAppBar(),
      body: Stack(
        children: [
          Obx(() => IndexedStack(
                index: controller.currentNavIndex.value,
                children: const [
                  HomeTab(),
                  ExploreView(),
                  AiChatView(),
                  ProfileView(),
                ],
              )),
          const Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: HomeBottomNav(),
          ),
        ],
      ),
    );
  }
}
