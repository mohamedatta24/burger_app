import 'package:burger_app/features/cart/domain/entities/topping_entity.dart';

class ToppingModel extends ToppingEntity {
  ToppingModel({
    required super.id,
    required super.name,
    required super.image,
  });

  factory ToppingModel.fromJson(Map<String, dynamic> json) {
    return ToppingModel(
      id: json["id"],
      name: json["name"],
      image: json["image"],
    );
  }
}