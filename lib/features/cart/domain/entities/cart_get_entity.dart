import 'package:burger_app/features/cart/domain/entities/cart_item_entity.dart';

class CartGetEntity {
  final int id;
  final String totalPrice;
  final List<CartItemEntity> items;

  CartGetEntity({
    required this.id,
    required this.totalPrice,
    required this.items,
  });

  CartGetEntity toEntity() {
    return CartGetEntity(
      id: id,
      totalPrice: totalPrice,
      items: items.map((e) => e.toEntity()).toList(),
    );
  }
}
