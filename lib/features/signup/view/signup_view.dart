import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/signup_controller.dart';
import '../widget/signup_background.dart';
import '../widget/signup_footer.dart';
import '../widget/signup_form.dart';
import '../widget/signup_header.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          const SignupBackground(),
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
                        SignupHeader(),
                        SizedBox(height: 40),
                        SignupForm(),
                        SizedBox(height: 48),
                        SignupFooter(),
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
