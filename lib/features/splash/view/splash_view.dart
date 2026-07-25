import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/app_assets.dart';
import '../controller/splash_controller.dart';
import '../../../core/theme/app_colors.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive sizing
    final size = MediaQuery.sizeOf(context);
    final isSmallScreen = size.width < 360;

    return Scaffold(
      backgroundColor: const Color(0xFFFDFAF6),
      body: Stack(
        children: [
          // Background Texture Layer
          Positioned.fill(
            child: Opacity(
              opacity: 0.4,
              child: Image.network(
                AppAssets.splashTextureUrl,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
          
          // Decorative Top Left
          Positioned(
            top: size.height * 0.04,
            left: size.width * 0.08,
            child: Icon(
              Icons.filter_vintage_outlined,
              color: AppColors.primary.withValues(alpha: 0.3),
              size: isSmallScreen ? 20 : 24,
            ),
          ),
          
          // Decorative Bottom Right
          Positioned(
            bottom: size.height * 0.04,
            right: -(size.width * 0.08),
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                AppStrings.splashTopRightText,
                style: GoogleFonts.nunitoSans(
                  fontSize: isSmallScreen ? 8 : 10,
                  letterSpacing: isSmallScreen ? 3.0 : 5.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary.withValues(alpha: 0.4),
                ),
              ),
            ),
          ),
          
          // Main Content with Fade-In-Up Animation
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              child: TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 1200),
                tween: Tween<double>(begin: 0, end: 1),
                curve: Curves.easeOut,
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: child,
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Top Logo
                    Container(
                      width: size.width * 0.35 > 160 ? 160 : size.width * 0.35,
                      height: size.width * 0.35 > 160 ? 160 : size.width * 0.35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: AppColors.primary.withValues(alpha: 0.2)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: Image.network(
                          AppAssets.splashLogoUrl,
                          fit: BoxFit.contain,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                color: AppColors.primary.withValues(alpha: 0.5),
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.broken_image, color: AppColors.textSecondary);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.06),
                    
                    // Central Branding
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        AppStrings.splashEstText,
                        style: GoogleFonts.nunitoSans(
                          color: AppColors.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 4.0,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        AppStrings.splashTitle,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunitoSans(
                          color: AppColors.primary,
                          fontSize: 40, 
                          fontWeight: FontWeight.w800,
                          letterSpacing: 6.0,
                          height: 1.0,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.04),
                    
                    Container(
                      width: size.width * 0.25 > 96 ? 96 : size.width * 0.25,
                      height: 1,
                      color: AppColors.primary.withValues(alpha: 0.4),
                    ),
                    SizedBox(height: size.height * 0.04),
                    
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        AppStrings.splashSubtitle,
                        style: GoogleFonts.nunitoSans(
                          color: AppColors.textPrimary.withValues(alpha: 0.7),
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
