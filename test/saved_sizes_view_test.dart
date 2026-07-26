import 'package:aethecart/features/saved_sizes/controller/saved_sizes_controller.dart';
import 'package:aethecart/features/saved_sizes/view/saved_sizes_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  tearDown(() => Get.reset());

  testWidgets('SavedSizesView shows profile summary and brand matches', (tester) async {
    Get.put(SavedSizesController());

    await tester.pumpWidget(const GetMaterialApp(home: SavedSizesView()));

    expect(find.text("Alex Rivera's Profile"), findsOneWidget);
    expect(find.text('Brand Preferences'), findsOneWidget);
    expect(find.text('Loro Piana'), findsOneWidget);
    expect(find.text('Start Scan'), findsOneWidget);
  });
}
