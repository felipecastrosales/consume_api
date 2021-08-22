import 'package:get/get.dart';

import 'package:consume_api/repository/i_user_repository.dart';

class GetConnectController extends GetxController with StateMixin { 
  GetConnectController(this._getConnectRepository);
  final IUserRepository _getConnectRepository;

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
      final datas = await _getConnectRepository.findAllUsers();
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