class HomeVibeProduct {
  final String id;
  final String title;
  final String category;
  final String vibe;
  final double price;
  final String imageUrl;
  final String aiReason;

  const HomeVibeProduct({
    required this.id,
    required this.title,
    required this.category,
    required this.vibe,
    required this.price,
    required this.imageUrl,
    required this.aiReason,
  });
}

class HomeMockData {
  static const Map<String, List<HomeVibeProduct>> vibeProductsMap = {
    'Serene Minimalist': [
      HomeVibeProduct(
        id: 'sm1',
        title: 'Raw Silk Oversized Tunic',
        category: 'Apparel • Silk',
        vibe: 'Serene Minimalist',
        price: 185.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
        aiReason: 'Unbleached organic silk with clean architectural drape.',
      ),
      HomeVibeProduct(
        id: 'sm2',
        title: 'Monolithic Ceramic Lamp',
        category: 'Home • Decor',
        vibe: 'Serene Minimalist',
        price: 140.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
        aiReason: 'Subtle clay finish designed for calm ambient spaces.',
      ),
      HomeVibeProduct(
        id: 'sm3',
        title: 'Linen Wide Pleated Trouser',
        category: 'Apparel • Bottoms',
        vibe: 'Serene Minimalist',
        price: 210.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
        aiReason: 'Breathable linen tailored for quiet elegance.',
      ),
      HomeVibeProduct(
        id: 'sm4',
        title: 'Architectural Concrete Planter',
        category: 'Living • Plantware',
        vibe: 'Serene Minimalist',
        price: 65.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
        aiReason: 'Stripped back form language with raw concrete texture.',
      ),
    ],
    'Urban Explorer': [
      HomeVibeProduct(
        id: 'ue1',
        title: 'Tactical Weatherproof Anorak',
        category: 'Outerwear • Techwear',
        vibe: 'Urban Explorer',
        price: 245.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
        aiReason: 'Water-repellent ripstop shell with modular cargo utility.',
      ),
      HomeVibeProduct(
        id: 'ue2',
        title: 'Ergonomic Stealth Backpack 24L',
        category: 'Bags • Gear',
        vibe: 'Urban Explorer',
        price: 165.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC9IaNR1RNzwCZZW9NUfE1M29L0d9BSRjOj6928o7lOTkZvFsWDlF5cwFR54Bc88Ew1tHyfornJfmzW2OXkf9doEdRXr6zuNuGctkfsSJhpSfiUpM_SCmdaqrBRs22ta7-Am6pMefs6RdI1_ffYoexgwsTwe3Rmhqx1pHhJgJhPPIBLDIis3qTx69AwZk6NauRFGNHUkGtoXOqtKrLz27wKEe76Kr8_Ot-SX40AMSPo59T_G_2DHOGVdJhsRezf0KSxzqEivDJ8OhCR',
        aiReason: 'Aerodynamic silhouette built for city transit and laptop safety.',
      ),
      HomeVibeProduct(
        id: 'ue3',
        title: 'Vibram Traction Trail Boots',
        category: 'Footwear • Outdoor',
        vibe: 'Urban Explorer',
        price: 220.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAiZ-zluE-YqsqOmh_mGQYHf3EvuS5pWMwdaZ5fJCOVtJSNmwUWRGs5xgmaprifhkZntLVm9yiDkp0PQzjmERWhZf6GVmdlFx7xGgv3b8MateRYVoyrZauzKVkJvvRDJSRcF1BDRLJk7YXJehUNQjxHgmp4vYWg_YNp0D4Qex9Jo1jhIST-kjPz5A-AKM3l0dLx1b-zRXBDXsSNbpmRRSUAh1fh5KGOayJHtNpDhuxfnCKcHsXgUk7aIHuJTVTLcyqqmmjKnUQMUs7D',
        aiReason: 'High-traction rubber outsole engineered for concrete & trails.',
      ),
      HomeVibeProduct(
        id: 'ue4',
        title: 'Reflective Commuter Pouch',
        category: 'Accessories • Carry',
        vibe: 'Urban Explorer',
        price: 78.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
        aiReason: 'Night-reflective accents with waterproof zip closure.',
      ),
    ],
    'Botanical Enthusiast': [
      HomeVibeProduct(
        id: 'be1',
        title: 'Sage Leaf Organic Kimono',
        category: 'Apparel • Loungewear',
        vibe: 'Botanical Enthusiast',
        price: 135.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
        aiReason: 'Plant-dyed organic cotton featuring delicate leaf motif.',
      ),
      HomeVibeProduct(
        id: 'be2',
        title: 'Terracotta Watering Pitcher',
        category: 'Garden • Artisan',
        vibe: 'Botanical Enthusiast',
        price: 52.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
        aiReason: 'Handmade unglazed clay porous pitcher for plant care.',
      ),
      HomeVibeProduct(
        id: 'be3',
        title: 'Eucalyptus Essential Oil Set',
        category: 'Wellness • Aromatherapy',
        vibe: 'Botanical Enthusiast',
        price: 42.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
        aiReason: 'Cold-pressed 100% pure steam distilled botanical extracts.',
      ),
      HomeVibeProduct(
        id: 'be4',
        title: 'Jute Macramé Plant Hanger',
        category: 'Decor • Craft',
        vibe: 'Botanical Enthusiast',
        price: 38.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
        aiReason: 'Handwoven natural jute cord with solid beechwood ring.',
      ),
    ],
    'Mid-Century Modern': [
      HomeVibeProduct(
        id: 'mc1',
        title: 'Walnut Wood Lounge Chair',
        category: 'Furniture • Living',
        vibe: 'Mid-Century Modern',
        price: 490.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
        aiReason: 'Sculpted american walnut frame with mustard velvet cushion.',
      ),
      HomeVibeProduct(
        id: 'mc2',
        title: 'Teak Geometric Starburst Clock',
        category: 'Decor • Wall',
        vibe: 'Mid-Century Modern',
        price: 115.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
        aiReason: '1950s retro inspired brass hands with teak wood rays.',
      ),
      HomeVibeProduct(
        id: 'mc3',
        title: 'Amber Glass Decanter Set',
        category: 'Dining • Barware',
        vibe: 'Mid-Century Modern',
        price: 88.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
        aiReason: 'Handblown vintage warm amber glass with natural cork stopper.',
      ),
      HomeVibeProduct(
        id: 'mc4',
        title: 'Brushed Brass Arc Desk Lamp',
        category: 'Lighting • Work',
        vibe: 'Mid-Century Modern',
        price: 150.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC9IaNR1RNzwCZZW9NUfE1M29L0d9BSRjOj6928o7lOTkZvFsWDlF5cwFR54Bc88Ew1tHyfornJfmzW2OXkf9doEdRXr6zuNuGctkfsSJhpSfiUpM_SCmdaqrBRs22ta7-Am6pMefs6RdI1_ffYoexgwsTwe3Rmhqx1pHhJgJhPPIBLDIis3qTx69AwZk6NauRFGNHUkGtoXOqtKrLz27wKEe76Kr8_Ot-SX40AMSPo59T_G_2DHOGVdJhsRezf0KSxzqEivDJ8OhCR',
        aiReason: 'Warm ambient glow with vintage brass arm swivel.',
      ),
    ],
    'Sustainable Chic': [
      HomeVibeProduct(
        id: 'sc1',
        title: 'Upcycled Denim Utility Jacket',
        category: 'Apparel • Outerwear',
        vibe: 'Sustainable Chic',
        price: 175.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
        aiReason: 'Reclaimed vintage denim pieced together by artisan tailors.',
      ),
      HomeVibeProduct(
        id: 'sc2',
        title: 'Vegan Apple Leather Tote',
        category: 'Bags • Eco',
        vibe: 'Sustainable Chic',
        price: 195.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
        aiReason: '100% bio-based apple peel leather with organic cotton lining.',
      ),
      HomeVibeProduct(
        id: 'sc3',
        title: 'Recycled Cashmere Knit Sweater',
        category: 'Apparel • Knitwear',
        vibe: 'Sustainable Chic',
        price: 230.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
        aiReason: 'Zero-waste post-consumer recycled cashmere yarn.',
      ),
      HomeVibeProduct(
        id: 'sc4',
        title: 'Bio-Acetate Polarized Shades',
        category: 'Accessories • Eyewear',
        vibe: 'Sustainable Chic',
        price: 140.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
        aiReason: 'Plant-based biodegradable frames with category 3 UV protection.',
      ),
    ],
  };

  static List<HomeVibeProduct> getProductsForVibe(String vibe) {
    return vibeProductsMap[vibe] ?? vibeProductsMap['Serene Minimalist']!;
  }
}
