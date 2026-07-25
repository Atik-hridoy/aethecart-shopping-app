import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_strings.dart';
import '../controller/onboarding_controller.dart';
import '../widget/onboarding_page_widget.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          // Subtle Grain Overlay
          Positioned.fill(
            child: Opacity(
              opacity: 0.04,
              child: Image.network(
                AppAssets.splashTextureUrl, // reusing texture
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
          
          SafeArea(
            child: Column(
              children: [
                // Top App Bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.onboardingAppTitle,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4.0,
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Page View
                Expanded(
                  child: PageView(
                    controller: controller.pageController,
                    onPageChanged: controller.onPageChanged,
                    children: const [
                      OnboardingPageWidget(
                        imageUrl: AppAssets.onboardingImage1,
                        subhead: AppStrings.onboardingPage1Subhead,
                        title: AppStrings.onboardingPage1Title,
                        description: AppStrings.onboardingPage1Desc,
                      ),
                      OnboardingPageWidget(
                        imageUrl: AppAssets.onboardingImage2,
                        subhead: AppStrings.onboardingPage2Subhead,
                        title: AppStrings.onboardingPage2Subhead, // Wait, HTML says VISUAL INTELLIGENCE for title too but let's use subhead as title if needed. Ah, the design for 2 has subhead "VISUAL INTELLIGENCE" and text "Find what you love..." - It doesn't have a large title like the first one? Let me double check, I'll pass the subhead for now. Actually, let's keep it uniform or pass empty.
                        description: AppStrings.onboardingPage2Desc,
                        showGlassOverlay: true,
                        overlayText: AppStrings.onboardingPage2Scanning,
                      ),
                      OnboardingPageWidget(
                        imageUrl: AppAssets.onboardingImage3,
                        subhead: AppStrings.onboardingPage3Subhead,
                        title: AppStrings.onboardingPage3Subhead,
                        description: AppStrings.onboardingPage3Desc,
                      ),
                    ],
                  ),
                ),
                
                // Bottom Indicator and Button
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 48),
                  child: Column(
                    children: [
                      // Page Indicators
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            3,
                            (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: controller.currentPage.value == index
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.transparent,
                                border: Border.all(
                                  color: controller.currentPage.value == index
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.outlineVariant,
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      
                      // Continue Button
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: controller.nextPage,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            foregroundColor: Theme.of(context).colorScheme.onPrimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 4,
                            shadowColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                          ),
                          child: Text(
                            AppStrings.onboardingContinue,
                            style: GoogleFonts.nunitoSans(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
