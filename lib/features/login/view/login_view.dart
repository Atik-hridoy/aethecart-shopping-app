import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/login_controller.dart';
import '../widget/login_background.dart';
import '../widget/login_footer.dart';
import '../widget/login_form.dart';
import '../widget/login_header.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          const LoginBackground(),
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraints.maxHeight - 48.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoginHeader(),
                        SizedBox(height: 40),
                        LoginForm(),
                        SizedBox(height: 32),
                        LoginFooter(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
