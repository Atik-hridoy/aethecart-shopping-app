import 'package:flutter/material.dart';
import '../models/explore_models.dart';

class ExploreMockData {
  static const double userBalance = 1920.10;
  static const int userPoints = 19204;

  static const List<String> filters = ['All', 'Promo', 'Best Deals', 'Windy Basic'];
  static const List<String> subFilters = ['All', 'Men', 'Women', 'Baby'];

  static const List<ExploreCategory> categories = [
    ExploreCategory(
      name: 'Apparel',
      icon: Icons.checkroom_rounded,
      bgColor: Color(0x3378A886),
      iconColor: Color(0xFF4A7C59),
    ),
    ExploreCategory(
      name: 'Home',
      icon: Icons.home_outlined,
      bgColor: Color(0x33C4A66A),
      iconColor: Color(0xFF705C30),
    ),
    ExploreCategory(
      name: 'Lifestyle',
      icon: Icons.spa_outlined,
      bgColor: Color(0x4D4A4538),
      iconColor: Color(0xFF6B6358),
    ),
    ExploreCategory(
      name: 'Specialty',
      icon: Icons.auto_awesome_outlined,
      bgColor: Color(0x3378A886),
      iconColor: Color(0xFF4A7C59),
    ),
    ExploreCategory(
      name: 'Sports',
      icon: Icons.fitness_center_rounded,
      bgColor: Color(0x33C4A66A),
      iconColor: Color(0xFF705C30),
    ),
    ExploreCategory(
      name: 'Beauty',
      icon: Icons.face_retouching_natural_rounded,
      bgColor: Color(0x4D4A4538),
      iconColor: Color(0xFF6B6358),
    ),
    ExploreCategory(
      name: 'Tech',
      icon: Icons.devices_rounded,
      bgColor: Color(0x3378A886),
      iconColor: Color(0xFF4A7C59),
    ),
    ExploreCategory(
      name: 'Accessories',
      icon: Icons.watch_rounded,
      bgColor: Color(0x33C4A66A),
      iconColor: Color(0xFF705C30),
    ),
  ];

  static const Map<String, List<ExploreBrand>> categoryBrandsMap = {
    'Apparel': [
      ExploreBrand(
        name: 'Nike',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAiZ-zluE-YqsqOmh_mGQYHf3EvuS5pWMwdaZ5fJCOVtJSNmwUWRGs5xgmaprifhkZntLVm9yiDkp0PQzjmERWhZf6GVmdlFx7xGgv3b8MateRYVoyrZauzKVkJvvRDJSRcF1BDRLJk7YXJehUNQjxHgmp4vYWg_YNp0D4Qex9Jo1jhIST-kjPz5A-AKM3l0dLx1b-zRXBDXsSNbpmRRSUAh1fh5KGOayJHtNpDhuxfnCKcHsXgUk7aIHuJTVTLcyqqmmjKnUQMUs7D',
      ),
      ExploreBrand(
        name: 'Adidas',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAHG6DXQA4pLmueYvVheA8Zo235J-e0bEs2CvUt9bP4wAp9QnGz5wr5YNLNS4lW30i1ZIiYKW77bIE1JkfHMJvzBlKVN3i3AmJRn9MIlPc0v6pNtvZ914seGPFCLyozDQKpzZrMjG72-rD64_xhZKumLHqQhACEUTsL4DsAqMOE38RpF5YRKYjvWY0cGRKd6TkqBz_2gt0fhEDkwbzh3jzRMTvpYtjSLpsTLGyfRmjQBCArwN4ycZRtuK-wubPj70kQ0A_VnEgphiWI',
      ),
      ExploreBrand(
        name: 'Chanel',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
      ),
      ExploreBrand(
        name: 'Zara',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
      ),
      ExploreBrand(
        name: 'Levi\'s',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
      ),
    ],
    'Home': [
      ExploreBrand(
        name: 'IKEA',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
      ),
      ExploreBrand(
        name: 'Pottery Barn',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
      ),
      ExploreBrand(
        name: 'MUJI',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
      ),
    ],
    'Lifestyle': [
      ExploreBrand(
        name: 'Lululemon',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAiZ-zluE-YqsqOmh_mGQYHf3EvuS5pWMwdaZ5fJCOVtJSNmwUWRGs5xgmaprifhkZntLVm9yiDkp0PQzjmERWhZf6GVmdlFx7xGgv3b8MateRYVoyrZauzKVkJvvRDJSRcF1BDRLJk7YXJehUNQjxHgmp4vYWg_YNp0D4Qex9Jo1jhIST-kjPz5A-AKM3l0dLx1b-zRXBDXsSNbpmRRSUAh1fh5KGOayJHtNpDhuxfnCKcHsXgUk7aIHuJTVTLcyqqmmjKnUQMUs7D',
      ),
      ExploreBrand(
        name: 'Ray-Ban',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
      ),
      ExploreBrand(
        name: 'Aesop',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
      ),
    ],
    'Specialty': [
      ExploreBrand(
        name: 'Leica',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC9IaNR1RNzwCZZW9NUfE1M29L0d9BSRjOj6928o7lOTkZvFsWDlF5cwFR54Bc88Ew1tHyfornJfmzW2OXkf9doEdRXr6zuNuGctkfsSJhpSfiUpM_SCmdaqrBRs22ta7-Am6pMefs6RdI1_ffYoexgwsTwe3Rmhqx1pHhJgJhPPIBLDIis3qTx69AwZk6NauRFGNHUkGtoXOqtKrLz27wKEe76Kr8_Ot-SX40AMSPo59T_G_2DHOGVdJhsRezf0KSxzqEivDJ8OhCR',
      ),
      ExploreBrand(
        name: 'Moleskine',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
      ),
    ],
    'Sports': [
      ExploreBrand(
        name: 'Nike',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAiZ-zluE-YqsqOmh_mGQYHf3EvuS5pWMwdaZ5fJCOVtJSNmwUWRGs5xgmaprifhkZntLVm9yiDkp0PQzjmERWhZf6GVmdlFx7xGgv3b8MateRYVoyrZauzKVkJvvRDJSRcF1BDRLJk7YXJehUNQjxHgmp4vYWg_YNp0D4Qex9Jo1jhIST-kjPz5A-AKM3l0dLx1b-zRXBDXsSNbpmRRSUAh1fh5KGOayJHtNpDhuxfnCKcHsXgUk7aIHuJTVTLcyqqmmjKnUQMUs7D',
      ),
      ExploreBrand(
        name: 'Adidas',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAHG6DXQA4pLmueYvVheA8Zo235J-e0bEs2CvUt9bP4wAp9QnGz5wr5YNLNS4lW30i1ZIiYKW77bIE1JkfHMJvzBlKVN3i3AmJRn9MIlPc0v6pNtvZ914seGPFCLyozDQKpzZrMjG72-rD64_xhZKumLHqQhACEUTsL4DsAqMOE38RpF5YRKYjvWY0cGRKd6TkqBz_2gt0fhEDkwbzh3jzRMTvpYtjSLpsTLGyfRmjQBCArwN4ycZRtuK-wubPj70kQ0A_VnEgphiWI',
      ),
      ExploreBrand(
        name: 'Puma',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
      ),
    ],
    'Beauty': [
      ExploreBrand(
        name: 'Sephora',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
      ),
      ExploreBrand(
        name: 'Chanel',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
      ),
    ],
    'Tech': [
      ExploreBrand(
        name: 'Apple',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC9IaNR1RNzwCZZW9NUfE1M29L0d9BSRjOj6928o7lOTkZvFsWDlF5cwFR54Bc88Ew1tHyfornJfmzW2OXkf9doEdRXr6zuNuGctkfsSJhpSfiUpM_SCmdaqrBRs22ta7-Am6pMefs6RdI1_ffYoexgwsTwe3Rmhqx1pHhJgJhPPIBLDIis3qTx69AwZk6NauRFGNHUkGtoXOqtKrLz27wKEe76Kr8_Ot-SX40AMSPo59T_G_2DHOGVdJhsRezf0KSxzqEivDJ8OhCR',
      ),
      ExploreBrand(
        name: 'DJI',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
      ),
      ExploreBrand(
        name: 'Sony',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC9IaNR1RNzwCZZW9NUfE1M29L0d9BSRjOj6928o7lOTkZvFsWDlF5cwFR54Bc88Ew1tHyfornJfmzW2OXkf9doEdRXr6zuNuGctkfsSJhpSfiUpM_SCmdaqrBRs22ta7-Am6pMefs6RdI1_ffYoexgwsTwe3Rmhqx1pHhJgJhPPIBLDIis3qTx69AwZk6NauRFGNHUkGtoXOqtKrLz27wKEe76Kr8_Ot-SX40AMSPo59T_G_2DHOGVdJhsRezf0KSxzqEivDJ8OhCR',
      ),
    ],
    'Accessories': [
      ExploreBrand(
        name: 'Rolex',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
      ),
      ExploreBrand(
        name: 'Ray-Ban',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
      ),
      ExploreBrand(
        name: 'Fossil',
        logoUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
      ),
    ],
  };

  static final Map<String, List<ExploreProduct>> popularFilterProductsMap = {
    'All': [
      ExploreProduct(
        id: 'p1',
        title: 'Linen Blend Oversized Tee',
        category: 'Terra • Men',
        tag: 'Men',
        price: 48.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
        isNew: true,
      ),
      ExploreProduct(
        id: 'p2',
        title: 'Organic Cotton Classic Fit',
        category: 'Terra • Women',
        tag: 'Women',
        price: 54.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
        isNew: false,
      ),
      ExploreProduct(
        id: 'p3',
        title: 'Vintage Wash Denim Jacket',
        category: 'Terra • Unisex',
        tag: 'Men',
        price: 89.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
        isNew: true,
      ),
      ExploreProduct(
        id: 'p4',
        title: 'Noise-Canceling Wireless Earbuds',
        category: 'Tech • Audio',
        tag: 'Men',
        price: 149.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC9IaNR1RNzwCZZW9NUfE1M29L0d9BSRjOj6928o7lOTkZvFsWDlF5cwFR54Bc88Ew1tHyfornJfmzW2OXkf9doEdRXr6zuNuGctkfsSJhpSfiUpM_SCmdaqrBRs22ta7-Am6pMefs6RdI1_ffYoexgwsTwe3Rmhqx1pHhJgJhPPIBLDIis3qTx69AwZk6NauRFGNHUkGtoXOqtKrLz27wKEe76Kr8_Ot-SX40AMSPo59T_G_2DHOGVdJhsRezf0KSxzqEivDJ8OhCR',
        isNew: true,
      ),
    ],
    'Promo': [
      ExploreProduct(
        id: 'pr1',
        title: 'Soft Organic Onesie Romper',
        category: 'Promo • Baby',
        tag: 'Baby',
        price: 28.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
        isNew: true,
      ),
      ExploreProduct(
        id: 'pr2',
        title: 'Ergonomic Stainless Flask 750ml',
        category: 'Promo • Outdoor',
        tag: 'Women',
        price: 29.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
      ),
      ExploreProduct(
        id: 'pr3',
        title: 'Magnetic Fast Power Bank 10000mAh',
        category: 'Promo • Accessories',
        tag: 'Women',
        price: 49.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
        isNew: true,
      ),
    ],
    'Best Deals': [
      ExploreProduct(
        id: 'bd1',
        title: 'Minimalist Ceramic Vase',
        category: 'Best Deal • Decor',
        tag: 'Men',
        price: 36.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
        isNew: true,
      ),
      ExploreProduct(
        id: 'bd2',
        title: 'Hand-poured Soy Wax Candle',
        category: 'Best Deal • Living',
        tag: 'Women',
        price: 24.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
      ),
      ExploreProduct(
        id: 'bd3',
        title: 'Performance Compression Shorts',
        category: 'Best Deal • Athletic',
        tag: 'Men',
        price: 38.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAiZ-zluE-YqsqOmh_mGQYHf3EvuS5pWMwdaZ5fJCOVtJSNmwUWRGs5xgmaprifhkZntLVm9yiDkp0PQzjmERWhZf6GVmdlFx7xGgv3b8MateRYVoyrZauzKVkJvvRDJSRcF1BDRLJk7YXJehUNQjxHgmp4vYWg_YNp0D4Qex9Jo1jhIST-kjPz5A-AKM3l0dLx1b-zRXBDXsSNbpmRRSUAh1fh5KGOayJHtNpDhuxfnCKcHsXgUk7aIHuJTVTLcyqqmmjKnUQMUs7D',
        isNew: true,
      ),
    ],
    'Windy Basic': [
      ExploreProduct(
        id: 'wb1',
        title: 'Windy Linen Comfort Hoodie',
        category: 'Windy • Apparel',
        tag: 'Men',
        price: 62.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
        isNew: true,
      ),
      ExploreProduct(
        id: 'wb2',
        title: 'Windy Lightweight Windbreaker',
        category: 'Windy • Outerwear',
        tag: 'Women',
        price: 95.00,
        imageUrl:
            'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
      ),
    ],
  };

  static List<ExploreProduct> getPopularProductsByFilter(String filter) {
    return popularFilterProductsMap[filter] ?? popularFilterProductsMap['All']!;
  }

  static List<ExploreProduct> getPopularProducts() => getPopularProductsByFilter('All');

  static Map<String, List<ExploreProduct>> getCategoryProductsMap() => {
        'Apparel': [
          ExploreProduct(
            id: 'ap1',
            title: 'Linen Blend Oversized Tee',
            category: 'Apparel • Men',
            tag: 'Men',
            price: 48.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
            isNew: true,
          ),
          ExploreProduct(
            id: 'ap2',
            title: 'Organic Cotton Classic Fit',
            category: 'Apparel • Women',
            tag: 'Women',
            price: 54.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
          ),
          ExploreProduct(
            id: 'ap3',
            title: 'Soft Organic Onesie Romper',
            category: 'Apparel • Baby',
            tag: 'Baby',
            price: 28.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
            isNew: true,
          ),
          ExploreProduct(
            id: 'ap4',
            title: 'Vintage Wash Denim Jacket',
            category: 'Apparel • Men',
            tag: 'Men',
            price: 89.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
          ),
          ExploreProduct(
            id: 'ap5',
            title: 'Floral Silk Summer Dress',
            category: 'Apparel • Women',
            tag: 'Women',
            price: 78.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
            isNew: true,
          ),
          ExploreProduct(
            id: 'ap6',
            title: 'Knitted Baby Cardigan & Beanie',
            category: 'Apparel • Baby',
            tag: 'Baby',
            price: 34.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
          ),
        ],
        'Home': [
          ExploreProduct(
            id: 'hm1',
            title: 'Minimalist Ceramic Vase',
            category: 'Home • Decor',
            tag: 'Men',
            price: 36.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
            isNew: true,
          ),
          ExploreProduct(
            id: 'hm2',
            title: 'Hand-poured Soy Wax Candle',
            category: 'Home • Living',
            tag: 'Women',
            price: 24.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
          ),
        ],
        'Lifestyle': [
          ExploreProduct(
            id: 'lf1',
            title: 'Organic Essential Oil Diffuser',
            category: 'Lifestyle • Wellness',
            tag: 'Women',
            price: 42.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
            isNew: true,
          ),
          ExploreProduct(
            id: 'lf2',
            title: 'Eco-friendly Cork Yoga Mat',
            category: 'Lifestyle • Fitness',
            tag: 'Men',
            price: 65.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAIY6cl-rcnkY-OuTU1sfe5ObmEd1bWKAmH9iC7KEmMJTrdzMrIae5-hBJO6sUbTWgZKKgkhClAAqIGCvCTOqChK2pZmf-NIJorlSBHCHBkduUe2xwY0aO1a2ZXx8SlG9nW4aPgNRv0Zhl_y2ApXPcXZSJyDpe1VAgLKqr-iFMT2ef7j3RIR5epG2MvRyd2qDI4g7o3LQgMFXuZ2wc_U51oUT4hVvCnSUKTdL3qpHLyEHnBbLmqTEZQDUOVkOsnvW-GfYIheo5T694g',
          ),
        ],
        'Specialty': [
          ExploreProduct(
            id: 'sp1',
            title: 'Artisan Leather Bound Journal',
            category: 'Specialty • Craft',
            tag: 'Men',
            price: 45.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
            isNew: true,
          ),
        ],
        'Sports': [
          ExploreProduct(
            id: 'sr1',
            title: 'Performance Compression Shorts',
            category: 'Sports • Athletic',
            tag: 'Men',
            price: 38.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAiZ-zluE-YqsqOmh_mGQYHf3EvuS5pWMwdaZ5fJCOVtJSNmwUWRGs5xgmaprifhkZntLVm9yiDkp0PQzjmERWhZf6GVmdlFx7xGgv3b8MateRYVoyrZauzKVkJvvRDJSRcF1BDRLJk7YXJehUNQjxHgmp4vYWg_YNp0D4Qex9Jo1jhIST-kjPz5A-AKM3l0dLx1b-zRXBDXsSNbpmRRSUAh1fh5KGOayJHtNpDhuxfnCKcHsXgUk7aIHuJTVTLcyqqmmjKnUQMUs7D',
            isNew: true,
          ),
          ExploreProduct(
            id: 'sr2',
            title: 'Ergonomic Stainless Flask 750ml',
            category: 'Sports • Outdoor',
            tag: 'Women',
            price: 29.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuAu6IQMPZkhPATM0tKec2gH9qGePVkwMYDA7g0oeln_EqMpNk4Wq61arrmlh5FjZUTqQSG0fNcQUGl6o5DVRQFRmspwva2ijp6VkxSaqSo16jELFVviE0sKjaaqHFM6nSz5EhEKfmiPRK7cgqT9B7u-4MblgAR5pt9xWrroDPWAze76J_rATkF_5QTkY-WPkxbkYUuCabTBL967E7mLivY3DKPe12zE1PWhi8vTTKMNwfxLEmSKpNZuNLKOWk5sc-iu3EuaLET7YsQT',
          ),
        ],
        'Beauty': [
          ExploreProduct(
            id: 'bt1',
            title: 'Hydrating Botanical Serum',
            category: 'Beauty • Skincare',
            tag: 'Women',
            price: 58.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
            isNew: true,
          ),
        ],
        'Tech': [
          ExploreProduct(
            id: 'tc1',
            title: 'Noise-Canceling Wireless Earbuds',
            category: 'Tech • Audio',
            tag: 'Men',
            price: 149.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuC9IaNR1RNzwCZZW9NUfE1M29L0d9BSRjOj6928o7lOTkZvFsWDlF5cwFR54Bc88Ew1tHyfornJfmzW2OXkf9doEdRXr6zuNuGctkfsSJhpSfiUpM_SCmdaqrBRs22ta7-Am6pMefs6RdI1_ffYoexgwsTwe3Rmhqx1pHhJgJhPPIBLDIis3qTx69AwZk6NauRFGNHUkGtoXOqtKrLz27wKEe76Kr8_Ot-SX40AMSPo59T_G_2DHOGVdJhsRezf0KSxzqEivDJ8OhCR',
            isNew: true,
          ),
          ExploreProduct(
            id: 'tc2',
            title: 'Magnetic Fast Power Bank 10000mAh',
            category: 'Tech • Accessories',
            tag: 'Women',
            price: 49.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuDk9UiaZe2gd7q-xlwiJvoGnIsUcsQvpebRfMhBNRwA1tnnohvv1-mwxTInSuCEHImaPHndcOlUToV7nYYaQD7cMzO-TonXTvvnjIuu1A7iKmomBPtLQGGg-hQulZd17oMbmxKPTJIDwssgEiSbR1zweT2MAgt8LP-RwTprcpJchs52sV20pVFe7L4-WLKWos74evK4ZLSeXNYHWqrZyfHfyK4mYdhnscIEzzF16NA8zDJ-q7NN9lkMRKZoyaUCEXv3vo9iyf8ZxlB8',
          ),
        ],
        'Accessories': [
          ExploreProduct(
            id: 'ac1',
            title: 'Minimalist Quartz Leather Watch',
            category: 'Accessories • Timepiece',
            tag: 'Men',
            price: 185.00,
            imageUrl:
                'https://lh3.googleusercontent.com/aida-public/AB6AXuC2FRHVC7X6hKJ4uJoNxwpofxXhQ5NGzyFx65YSzXSVSqpiZwJ6tj2zdANhilOSN0TO6yRUGJWMCVz-bSo3ZUxTio6klPzB2Ro2kueBz9cuhUGk9WCmH8tiNzBtmofxKD0i_GS6yHPh7yEJbK7h65sJFxacVpQeNGy-lYq9_NtqJ6uU50QMGf1b1HtdMwBINQS0qbyU0qARDx4mcNCmkd9UrasxZ1hR9htBbQfc6OuT8I7E6H6uSeKKPt_yeUjiXOpy0l1Zx6b1aWB0',
            isNew: true,
          ),
        ],
      };
}
