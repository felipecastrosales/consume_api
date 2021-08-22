import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API | Access Guide'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Get.toNamed('/http'),
              child: Text(
                'HTTP',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'DIO',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/getconnect'),
              child: Text(
                'GetCONNECT',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
