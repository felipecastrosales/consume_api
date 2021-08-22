import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'home/get_connect/get_connect_bindings.dart';
import 'home/get_connect/get_connect_page.dart';
import 'home/home_bindings.dart';
import 'home/home_page.dart';
import 'home/http/http_binding.dart';
import 'home/http/http_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomeBindings(),
          children: [
            GetPage(
              name: '/http',
              page: () => HttpPage(),
              binding: HttpBinding(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => GetConnectPage(),
              binding: GetConnectBinding(),
            ),
          ],
        ),
      ],
    );
  }
}
