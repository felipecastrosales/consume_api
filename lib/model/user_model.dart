import 'dart:convert';

import 'user_type.dart';

class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.userTypes,
  });

  String id;
  String name;
  String username;
  List<UserType>? userTypes;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'user_types': userTypes?.map(
        (uT) => uT.toMap(),
      ).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      userTypes: List<UserType>.from(
        map['user_types']?.map(
          (x) => UserType.fromMap(x)
        ) ?? const [],
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

}
