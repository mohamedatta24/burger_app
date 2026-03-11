import 'package:burger_app/features/cart/domain/entities/cart_entity.dart';

class CartModel extends CartEntity {
  CartModel({
    required super.productId,
    required super.quantity,
    super.spicy,
    super.toppings,
    super.sideOptions,
  });

  // factory CartModel.fromJson(CartEntity entity) {
  //   return CartModel(
  //     productId: entity.productId,
  //     quantity: entity.quantity,
  //     spicy: entity.spicy,
  //     toppings: entity.toppings,
  //     sideOptions: entity.sideOptions,
  //   );
  // }

  Map<String, dynamic> toJson() {
    return {
      "product_id": productId,
      "quantity": quantity,
      "spicy": spicy,
      "toppings": toppings ?? [],
      "side_options": sideOptions ?? [],
    };
  }
}