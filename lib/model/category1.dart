import 'package:flutter/material.dart';

class CategoryModel {
  String pic_path;

  CategoryModel({
    required this.pic_path,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        pic_path:
            'https://www.asus.com/microsite/Graphics-Cards/GeForce-RTX-40-Series/'));

    categories.add(CategoryModel(
        pic_path: 'https://rog.asus.com/2024-rog-gaming-laptops/'));

    categories.add(CategoryModel(
        pic_path: 'https://www.asus.com/microsite/all-in-one-liquid-cooling/'));

    categories.add(CategoryModel(
        pic_path:
            'https://rog.asus.com/keyboards/keyboards/aura-rgb/rog-falchion-rx-low-profile/'));

    categories.add(CategoryModel(
        pic_path: 'https://rog.asus.com/phones/rog-phone-8-pro/'));

    categories.add(CategoryModel(
        pic_path:
            'https://rog.asus.com/monitors/above-34-inches/rog-swift-oled-pg34wcdm/'));

    return categories;
  }
}
