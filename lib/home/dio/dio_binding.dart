import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:consume_api/repository/i_user_repository.dart';
import 'dio_controller.dart';
import 'repository/user_repository_dio.dart';

class DioBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      Dio(),
    );
    Get.put<IUserRepository>(
      UserRepositoryDio(Get.find()),
    );
    Get.put(
      DioController(Get.find()),
    );
  }
}
