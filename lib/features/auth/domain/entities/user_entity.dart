class UserEntity {
  final String message;
  final String? token;
  final String name;
  final String email;
  final String? image;
  final String? address;
  final String? visa;

  UserEntity({
    required this.token,
    required this.name,
    required this.email,
    required this.image,
    required this.message,
    required this.address,
    required this.visa,
  });
}