import 'package:blog_app/features/auth/domain/entities/user.dart';

class UserModel extends User {
  UserModel({required super.id, required super.name, required super.email});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(id: map['id'], name: map['name'], email: map['email']);
  }
}
