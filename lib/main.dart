import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'home/dio/dio_binding.dart';
import 'home/dio/dio_page.dart';
import 'home/get_connect/get_connect_bindings.dart';
import 'home/get_connect/get_connect_page.dart';
import 'home/home_bindings.dart';
import 'home/home_page.dart';
import 'home/http/http_binding.dart';
import 'home/http/http_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
          binding: HomeBindings(),
          children: [
            GetPage(
              name: '/http',
              page: () => const HttpPage(),
              binding: HttpBinding(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => const GetConnectPage(),
              binding: GetConnectBinding(),
            ),
            GetPage(
              name: '/dio',
              page: () => const DioPage(),
              binding: DioBinding(),
            ),
          ],
        ),
      ],
    );
  }
}
