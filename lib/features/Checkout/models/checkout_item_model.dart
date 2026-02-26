import 'package:flutter/material.dart';

class CheckoutItemModel {
  final String title;
  final String price;
  final Color? color;

  const CheckoutItemModel({
    required this.title,
    required this.price,
    this.color,
  });
}
