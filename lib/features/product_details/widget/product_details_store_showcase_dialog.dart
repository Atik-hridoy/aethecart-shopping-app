import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../explore/data/models/explore_models.dart';
import '../../explore/widget/explore_product_card.dart';

class StoreShowcaseDialog extends StatefulWidget {
  const StoreShowcaseDialog({super.key});

  static void show(BuildContext context) {
    Get.dialog(
      const Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: StoreShowcaseDialog(),
      ),
    );
  }

  @override
  State<StoreShowcaseDialog> createState() => _StoreShowcaseDialogState();
}

class _StoreShowcaseDialogState extends State<StoreShowcaseDialog> {
  bool _isFollowing = false;
  String _selectedCategory = 'All Items';

  static const List<String> _storeCategories = [
    'All Items',
    'New Arrivals',
    'Best Sellers',
    'On Sale',
  ];

  static final List<ExploreProduct> _storeProducts = [
    ExploreProduct(
      id: 'tp1',
      title: 'Linen Blend Oversized Tee',
      category: 'Apparel • Men',
      tag: 'Men',
      price: 48.00,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
      isNew: true,
    ),
    ExploreProduct(
      id: 'tp2',
      title: 'Organic Cotton Classic Fit',
      category: 'Apparel • Women',
      tag: 'Women',
      price: 54.00,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
      isNew: false,
    ),
    ExploreProduct(
      id: 'tp3',
      title: 'Vintage Wash Denim Jacket',
      category: 'Apparel • Unisex',
      tag: 'Men',
      price: 89.00,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
      isNew: true,
    ),
    ExploreProduct(
      id: 'tp4',
      title: 'Floral Silk Summer Dress',
      category: 'Apparel • Women',
      tag: 'Women',
      price: 78.00,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
      isNew: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      constraints: const BoxConstraints(maxWidth: 680, maxHeight: 720),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 28,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Column(
          children: [
            // Store Hero Cover + Close Button
            Stack(
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        theme.colorScheme.primaryContainer,
                        theme.colorScheme.secondaryContainer,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                Positioned(
                  right: 12,
                  top: 12,
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        color: Colors.black45,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 12,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surface,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: theme.colorScheme.surface,
                            width: 3,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'TA',
                            style: GoogleFonts.literata(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Terra Atelier',
                                style: GoogleFonts.literata(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                              const SizedBox(width: 6),
                              Icon(
                                Icons.verified_rounded,
                                size: 18,
                                color: theme.colorScheme.primary,
                              ),
                            ],
                          ),
                          Text(
                            'Official Luxury Merchant • 48.5K Followers',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Store Metrics & Follow Row
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 12),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildMetric('4.9 ★', 'Rating', theme),
                        _buildMetric('1,240', 'Items', theme),
                        _buildMetric('98%', 'Response', theme),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() => _isFollowing = !_isFollowing);
                      Get.snackbar(
                        _isFollowing ? 'Followed Store' : 'Unfollowed Store',
                        _isFollowing
                            ? 'You will now receive notifications on new Terra Atelier releases.'
                            : 'Removed from followed stores.',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    },
                    icon: Icon(
                      _isFollowing ? Icons.check_rounded : Icons.add_rounded,
                      size: 16,
                    ),
                    label: Text(
                      _isFollowing ? 'Following' : 'Follow Store',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _isFollowing
                          ? theme.colorScheme.surfaceContainerHighest
                          : theme.colorScheme.primary,
                      foregroundColor: _isFollowing
                          ? theme.colorScheme.onSurface
                          : theme.colorScheme.onPrimary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            // Category Filter Pills
            SizedBox(
              height: 48,
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                scrollDirection: Axis.horizontal,
                itemCount: _storeCategories.length,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final cat = _storeCategories[index];
                  final isSelected = _selectedCategory == cat;

                  return ChoiceChip(
                    label: Text(
                      cat,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: isSelected
                            ? theme.colorScheme.onPrimary
                            : theme.colorScheme.onSurface,
                      ),
                    ),
                    selected: isSelected,
                    onSelected: (_) =>
                        setState(() => _selectedCategory = cat),
                    selectedColor: theme.colorScheme.primary,
                    backgroundColor: theme.colorScheme.surfaceContainerHigh,
                    elevation: isSelected ? 2 : 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(999),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 6),
                  );
                },
              ),
            ),
            const Divider(height: 1),
            // Store Catalog Grid
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: _storeProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.64,
                ),
                itemBuilder: (context, index) {
                  final product = _storeProducts[index];
                  return ExploreProductCard(
                    product: product,
                    onFavoriteToggle: () {
                      product.isFavorite.toggle();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetric(String value, String label, ThemeData theme) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.nunitoSans(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.nunitoSans(
            fontSize: 10,
            color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
          ),
        ),
      ],
    );
  }
}
