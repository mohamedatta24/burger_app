import 'package:burger_app/features/cart/data/models/cart_item_model.dart';
import 'package:burger_app/features/cart/domain/entities/cart_get_entity.dart';

class CartGetModel extends CartGetEntity {
  CartGetModel({
    required super.id,
    required super.totalPrice,
    required super.items,
  });

  factory CartGetModel.fromJson(Map<String, dynamic> json) {
    return CartGetModel(
      id: json["id"] ?? "",
      totalPrice: json["total_price"] ?? "",
      items: List<CartItemModel>.from(
        json["items"].map((e) => CartItemModel.fromJson(e)) ?? [],
      ),
    );
  }
}
