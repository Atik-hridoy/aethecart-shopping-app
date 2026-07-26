import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/security_privacy_controller.dart';
import '../widget/account_security_group.dart';
import '../widget/data_privacy_group.dart';
import '../widget/trust_center_card.dart';

class SecurityPrivacyView extends GetView<SecurityPrivacyController> {
  const SecurityPrivacyView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface.withValues(alpha: 0.8),
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: theme.colorScheme.primary,
        ),
        title: Text(
          'Security & Privacy',
          style: GoogleFonts.literata(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
            letterSpacing: -0.5,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 100),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 720),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TrustCenterCard(),
                  SizedBox(height: 32),
                  AccountSecurityGroup(),
                  SizedBox(height: 32),
                  DataPrivacyGroup(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
