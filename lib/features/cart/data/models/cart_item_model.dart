import 'package:burger_app/features/cart/data/models/side_option_model.dart';
import 'package:burger_app/features/cart/data/models/topping_model.dart';
import 'package:burger_app/features/cart/domain/entities/cart_item_entity.dart';

class CartItemModel extends CartItemEntity {
  CartItemModel({
    required super.itemId,
    required super.productId,
    required super.name,
    required super.image,
    required super.quantity,
    required super.price,
    super.spicy,
    super.toppings,
    super.sideOptions,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      itemId: json["item_id"],
      productId: json["product_id"],
      name: json["name"],
      image: json["image"],
      quantity: json["quantity"],
      price: json["price"],
      spicy: double.tryParse(json["spicy"].toString()) ?? 0.0,
      toppings: List<ToppingModel>.from(
        json["toppings"].map((e) => ToppingModel.fromJson(e)),
      ),
      sideOptions: List<SideOptionModel>.from(
        json["side_options"].map((e) => SideOptionModel.fromJson(e)),
      ),
    );
  }
}
