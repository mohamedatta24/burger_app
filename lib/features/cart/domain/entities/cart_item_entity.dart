import 'package:burger_app/features/cart/domain/entities/side_option_entity.dart';
import 'package:burger_app/features/cart/domain/entities/topping_entity.dart';

class CartItemEntity {
  final int itemId;
  final int productId;
  final String name;
  final String image;
  final int quantity;
  final String price;
  final double? spicy;
  final List<ToppingEntity>? toppings;
  final List<SideOptionEntity>? sideOptions;

  CartItemEntity({
    required this.itemId,
    required this.productId,
    required this.name,
    required this.image,
    required this.quantity,
    required this.price,
    this.spicy,
    this.toppings,
    this.sideOptions,
  });


  CartItemEntity toEntity() {
    return CartItemEntity(
      itemId: itemId,
      productId: productId,
      name: name,
      image: image,
      quantity: quantity,
      price: price,
      spicy: spicy,
      toppings: toppings,
      sideOptions: sideOptions,
    );
  }
}
