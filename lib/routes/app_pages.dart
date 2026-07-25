import 'package:get/get.dart';
import '../features/home/bindings/home_binding.dart';
import '../features/home/view/home_view.dart';
import '../features/login/bindings/login_binding.dart';
import '../features/login/view/login_view.dart';
import '../features/onboarding/bindings/onboarding_binding.dart';
import '../features/onboarding/view/onboarding_view.dart';
import '../features/signup/bindings/signup_binding.dart';
import '../features/signup/view/signup_view.dart';
import '../features/splash/bindings/splash_binding.dart';
import '../features/splash/view/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
