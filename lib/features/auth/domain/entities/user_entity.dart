class UserEntity {

  final String name;
  final String email;
  final String token;
  final String? image;

  UserEntity({

    required this.name,
    required this.email,
    required this.token,
    this.image,
  });

    Map<String, dynamic> toJson() {
    return {

      'name': name,
      'email': email,
      'token': token,
      'image': image,
    };
  }
}
