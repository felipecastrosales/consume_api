import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:consume_api/model/user_model.dart';
import 'package:consume_api/repository/i_user_repository.dart';

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await http.get(
      Uri.parse(
        'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users',
      ),
    );

    final List<dynamic> responseMap = jsonDecode(response.body);

    return responseMap.map<UserModel>(
      (responseList) => UserModel.fromMap(responseList),
    ).toList();
  }
}
