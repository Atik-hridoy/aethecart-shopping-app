import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/product_details_controller.dart';

class ProductDetailsReviews extends StatelessWidget {
  const ProductDetailsReviews({super.key, required this.controller});

  final ProductDetailsController controller;

  static const List<String> _sampleCustomerPhotos = [
    'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
    'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
    'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
    'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title & Overall Score
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Ratings & Reviews',
              style: GoogleFonts.literata(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            ),
            InkWell(
              onTap: () => controller.openWriteReviewModal(),
              child: Text(
                'WRITE A REVIEW',
                style: GoogleFonts.nunitoSans(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        // Score Overview Card
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
            ),
          ),
          child: Row(
            children: [
              // Rating Number
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '4.8',
                    style: GoogleFonts.literata(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                      height: 1.0,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        index < 4 ? Icons.star_rounded : Icons.star_half_rounded,
                        size: 16,
                        color: const Color(0xFFE5A638),
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '128 ratings',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 11,
                      color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 24),
              // Rating Bar Breakdown
              Expanded(
                child: Column(
                  children: [
                    _buildRatingBar(theme, 5, 0.85),
                    const SizedBox(height: 4),
                    _buildRatingBar(theme, 4, 0.10),
                    const SizedBox(height: 4),
                    _buildRatingBar(theme, 3, 0.03),
                    const SizedBox(height: 4),
                    _buildRatingBar(theme, 2, 0.01),
                    const SizedBox(height: 4),
                    _buildRatingBar(theme, 1, 0.01),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Customer Photo Reviews Scroll Bar
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Photos from Customers',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                Text(
                  '24 Photos',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 12,
                    color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _sampleCustomerPhotos.length,
                separatorBuilder: (context, index) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  final photoUrl = _sampleCustomerPhotos[index];
                  return GestureDetector(
                    onTap: () => _openImageDialog(context, photoUrl),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          photoUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (ctx, err, stack) => Icon(
                            Icons.image_not_supported_outlined,
                            size: 24,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        // Customer Reviews List
        _buildReviewCard(
          context: context,
          theme: theme,
          author: 'Sophia Reynolds',
          avatarText: 'SR',
          rating: 5,
          date: '2 days ago',
          reviewText:
              'The linen blend texture is absolutely incredible! Oversized fit is exactly as described and super breathable. Highly recommended!',
          helpfulCount: 14,
          photos: [
            _sampleCustomerPhotos[0],
            _sampleCustomerPhotos[1],
          ],
        ),
        const SizedBox(height: 14),
        _buildReviewCard(
          context: context,
          theme: theme,
          author: 'Marcus Vance',
          avatarText: 'MV',
          rating: 4,
          date: '1 week ago',
          reviewText:
              'Great stitching quality and fast shipping from Terra Atelier. Color is slightly darker than screen photo, but looks very sleek.',
          helpfulCount: 8,
          photos: [
            _sampleCustomerPhotos[2],
          ],
        ),
      ],
    );
  }

  Widget _buildRatingBar(ThemeData theme, int stars, double ratio) {
    return Row(
      children: [
        Text(
          '$stars★',
          style: GoogleFonts.nunitoSans(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: LinearProgressIndicator(
              value: ratio,
              minHeight: 6,
              backgroundColor: theme.colorScheme.surfaceContainerHighest,
              valueColor: AlwaysStoppedAnimation<Color>(
                theme.colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReviewCard({
    required BuildContext context,
    required ThemeData theme,
    required String author,
    required String avatarText,
    required int rating,
    required String date,
    required String reviewText,
    required int helpfulCount,
    List<String>? photos,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: theme.colorScheme.primaryContainer,
                child: Text(
                  avatarText,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          author,
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'VERIFIED',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Row(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star_rounded,
                              size: 13,
                              color: index < rating
                                  ? const Color(0xFFE5A638)
                                  : theme.colorScheme.outlineVariant,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          date,
                          style: GoogleFonts.nunitoSans(
                            fontSize: 11,
                            color: theme.colorScheme.onSurfaceVariant
                                .withValues(alpha: 0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            reviewText,
            style: GoogleFonts.nunitoSans(
              fontSize: 13,
              color: theme.colorScheme.onSurface,
              height: 1.4,
            ),
          ),
          // Attached Review Photos
          if (photos != null && photos.isNotEmpty) ...[
            const SizedBox(height: 12),
            SizedBox(
              height: 72,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: photos.length,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final photoUrl = photos[index];
                  return GestureDetector(
                    onTap: () => _openImageDialog(context, photoUrl),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        photoUrl,
                        width: 72,
                        height: 72,
                        fit: BoxFit.cover,
                        errorBuilder: (ctx, err, stack) => Container(
                          width: 72,
                          height: 72,
                          color: theme.colorScheme.surfaceContainerHighest,
                          child: Icon(
                            Icons.image_not_supported_outlined,
                            size: 20,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 14,
                        color: theme.colorScheme.onSurfaceVariant
                            .withValues(alpha: 0.6),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Helpful ($helpfulCount)',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 11,
                          color: theme.colorScheme.onSurfaceVariant
                              .withValues(alpha: 0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _openImageDialog(BuildContext context, String imageUrl) {
    Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.all(16),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
              ),
            ),
            IconButton(
              onPressed: () => Get.back(),
              icon: Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close_rounded, color: Colors.white, size: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
