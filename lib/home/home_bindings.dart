import 'package:get/get.dart';

import 'package:consume_api/shared/rest_client.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      RestClient(),
    );
  }
}
