import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:consume_api/model/user_model.dart';
import 'get_connect_controller.dart';

class GetConnectPage extends GetView<GetConnectController> {
  const GetConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API | Access Guide'),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              return ListTile(
                title: item.name == ''
                    ? const Text('Without name')
                    : Text(item.name),
                subtitle: item.userTypes!.isEmpty
                    ? const Text('Without length')
                    : Text('Types length: ${item.userTypes!.length}'),
              );
            },
          );
        },
        onError: (error) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (error != null) Text(error),
                TextButton(
                  onPressed: () => controller.findUsers(),
                  child: const Text('Search again!'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
