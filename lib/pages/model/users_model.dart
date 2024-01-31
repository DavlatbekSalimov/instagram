class UsersModel {
  String email;
  String password;
  String id;
  UsersModel({
    required this.email,
    required this.password,
    required this.id,
  });
  factory UsersModel.fromjson(Map<String, dynamic> json) => UsersModel(
        email: json['email'],
        password: json['password'],
        id: json['id'],
      );
}
