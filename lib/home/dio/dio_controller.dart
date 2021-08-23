import 'package:get/get.dart';

import 'package:consume_api/repository/i_user_repository.dart';

class DioController extends GetxController with StateMixin {
  DioController(this._dioRepository); 
  final IUserRepository _dioRepository;

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
      final datas = await _dioRepository.findAllUsers();
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
