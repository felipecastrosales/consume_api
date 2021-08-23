import 'package:dio/dio.dart';

import 'package:consume_api/model/user_model.dart';
import 'package:consume_api/repository/i_user_repository.dart';

class UserRepositoryDio implements IUserRepository {
  UserRepositoryDio(this._dio);
  final Dio _dio;

  @override
  // ignore: override_on_non_overriding_member
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await _dio.get<List>(
        'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users',
      );
      return response.data?.map(
        (e) => UserModel.fromMap(e),
      ).toList() ?? [];
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}