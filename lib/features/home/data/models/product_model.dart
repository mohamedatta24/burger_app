import 'package:burger_app/features/home/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required super.id,
    required super.name,
    required super.image,
    required super.rating,
    required super.price,
    required super.description,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"] ,
      name: json["name"] ,
      description: json["description"],
      image: json["image"],
      rating: json["rating"],
      price: json["price"],
    );
  }
}
