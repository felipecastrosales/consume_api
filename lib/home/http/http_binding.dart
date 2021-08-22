import 'package:get/get.dart';

import 'package:consume_api/repository/i_user_repository.dart';
import 'http_controller.dart';
import 'repository/user_http_repository.dart';

class HttpBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(
      UserHttpRepository(),
    );
    Get.put(
      HttpController(Get.find()),
    );
  }
}
