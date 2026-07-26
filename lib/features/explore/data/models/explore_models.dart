import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreCategory {
  final String name;
  final IconData icon;
  final Color bgColor;
  final Color iconColor;

  const ExploreCategory({
    required this.name,
    required this.icon,
    required this.bgColor,
    required this.iconColor,
  });
}

class ExploreBrand {
  final String name;
  final String logoUrl;

  const ExploreBrand({
    required this.name,
    required this.logoUrl,
  });
}

class ExploreProduct {
  final String id;
  final String title;
  final String category;
  final String tag; // 'Men', 'Women', 'Baby', 'Unisex', etc.
  final double price;
  final String imageUrl;
  final bool isNew;
  final RxBool isFavorite;

  ExploreProduct({
    required this.id,
    required this.title,
    required this.category,
    required this.tag,
    required this.price,
    required this.imageUrl,
    this.isNew = false,
    bool isFavorite = false,
  }) : isFavorite = isFavorite.obs;
}
