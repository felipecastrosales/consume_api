import 'package:dio/dio.dart';

import 'package:consume_api/model/user_model.dart';
import 'package:consume_api/repository/i_user_repository.dart';
import 'package:flutter/foundation.dart';

class UserRepositoryDio implements IUserRepository {
  UserRepositoryDio(this._dio);
  final Dio _dio;

  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await _dio.get<List>(
        'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users',
      );
      return response.data?.map((e) => UserModel.fromMap(e)).toList() ?? [];
    } catch (e) {
      debugPrint('Error to find all users: $e');
      rethrow;
    }
  }
}
