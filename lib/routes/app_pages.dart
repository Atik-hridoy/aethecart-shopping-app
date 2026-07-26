import 'package:get/get.dart';
import '../features/product_details/bindings/product_details_binding.dart';
import '../features/product_details/view/product_details_view.dart';
import '../features/cart/bindings/cart_binding.dart';
import '../features/cart/view/cart_view.dart';
import '../features/collection_details/bindings/collection_details_binding.dart';
import '../features/collection_details/view/collection_details_view.dart';
import '../features/collections/bindings/collections_binding.dart';
import '../features/collections/view/collections_view.dart';
import '../features/departments/bindings/departments_binding.dart';
import '../features/departments/view/departments_view.dart';
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
import '../features/wishlist/bindings/wishlist_binding.dart';
import '../features/wishlist/view/wishlist_view.dart';
import '../features/checkout/bindings/checkout_binding.dart';
import '../features/checkout/view/checkout_view.dart';
import '../features/order_success/bindings/order_success_binding.dart';
import '../features/order_success/view/order_success_view.dart';
import '../features/track_order/bindings/track_order_binding.dart';
import '../features/track_order/view/track_order_view.dart';

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
    GetPage(
      name: Routes.collections,
      page: () => const CollectionsView(),
      binding: CollectionsBinding(),
    ),
    GetPage(
      name: Routes.collectionDetails,
      page: () => const CollectionDetailsView(),
      binding: CollectionDetailsBinding(),
    ),
    GetPage(
      name: Routes.productDetails,
      page: () => const ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: Routes.departments,
      page: () => const DepartmentsView(),
      binding: DepartmentsBinding(),
    ),
    GetPage(
      name: Routes.cart,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: Routes.wishlist,
      page: () => const WishlistView(),
      binding: WishlistBinding(),
    ),
    GetPage(
      name: Routes.checkout,
      page: () => const CheckoutView(),
      binding: CheckoutBinding(),
    ),
    GetPage(
      name: Routes.orderSuccess,
      page: () => const OrderSuccessView(),
      binding: OrderSuccessBinding(),
    ),
    GetPage(
      name: Routes.trackOrder,
      page: () => const TrackOrderView(),
      binding: TrackOrderBinding(),
    ),
  ];
}
