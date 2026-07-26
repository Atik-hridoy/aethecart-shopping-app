import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/profile_controller.dart';
import '../widget/profile_activity_menu.dart';
import '../widget/profile_header.dart';
import '../widget/profile_info_cards.dart';
import '../widget/profile_logout_action.dart';
import '../widget/profile_security_section.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 120),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 896), // max-w-4xl roughly
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ProfileHeader(),
              const SizedBox(height: 32),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth >= 768) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(flex: 2, child: ProfileInfoCards()),
                        const SizedBox(width: 24),
                        const Expanded(flex: 1, child: ProfileActivityMenu()),
                      ],
                    );
                  }
                  return const Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ProfileInfoCards(),
                      SizedBox(height: 24),
                      ProfileActivityMenu(),
                    ],
                  );
                },
              ),
              const SizedBox(height: 32),
              const ProfileSecuritySection(),
              const SizedBox(height: 32),
              const ProfileLogoutAction(),
            ],
          ),
        ),
      ),
    );
  }
}
