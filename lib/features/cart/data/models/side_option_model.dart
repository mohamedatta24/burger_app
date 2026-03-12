import 'package:burger_app/features/cart/domain/entities/side_option_entity.dart';

class SideOptionModel extends SideOptionEntity {
  SideOptionModel({
    required super.id,
    required super.name,
    required super.image,
  });

  factory SideOptionModel.fromJson(Map<String, dynamic> json) {
    return SideOptionModel(
      id: json["id"],
      name: json["name"],
      image: json["image"],
    );
  }
}
