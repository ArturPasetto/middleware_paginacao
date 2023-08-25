
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middleware_paginacao/controller.dart';


class PageOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('One'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Get.toNamed('/dois');
          await Controller.to.saveToken("lorem");
          Get.rootDelegate.toNamed('/dois');
        },
      ),
    );
  }
}
