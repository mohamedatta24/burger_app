class CartEntity {
  final int productId;
  final int quantity;
  final double? spicy;
  final List<int>? toppings;
  final List<int>? sideOptions;

  CartEntity({
    required this.productId,
    required this.quantity,
    this.spicy,
    this.toppings,
    this.sideOptions,
  });
}
