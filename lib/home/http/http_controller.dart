import 'package:get/get.dart';

import 'package:consume_api/repository/i_user_repository.dart';

class HttpController extends GetxController with StateMixin {
  HttpController(this._httpRepository);

  final IUserRepository _httpRepository;

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  void findUsers() async {
    change(
      [],
      status: RxStatus.loading(),
    );

    try {
      final datas = await _httpRepository.findAllUsers();
      change(
        datas,
        status: RxStatus.success(),
      );
    } catch (e) {
      print(e);
      change(
        [],
        status: RxStatus.error('Error to search users'),
      );
    }
  }
}
