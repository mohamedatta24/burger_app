import 'package:burger_app/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.token,
    required super.name,
    required super.email,
    required super.image,
    required super.message,
    super.address,
    super.visa,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      message: json['message'],
      token: json['data']['token'],
      name: json['data']['name'],
      email: json['data']['email'],
      image: json['data']['image'],
      visa: json['data']['Visa'],
      address: json['data']['address'],
    );
  }
}
