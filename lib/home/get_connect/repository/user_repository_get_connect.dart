import 'package:consume_api/model/user_model.dart';
import 'package:consume_api/repository/i_user_repository.dart';
import 'package:consume_api/shared/rest_client.dart';

class UserRepositoryGetConnect implements IUserRepository {
  UserRepositoryGetConnect(this.restClient);
  final RestClient restClient;

  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await restClient.get(
      'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users',
      decoder: (body) {
        if (body is List) {
          return body.map<UserModel>(
            (responseList) => UserModel.fromMap(responseList),
          ).toList();
        } else {
          return <UserModel>[];
        }
      },
    );
    if (response.hasError) {
      throw Exception('Error to search users');
    }
    return response.body ?? <UserModel>[];
  }
}
