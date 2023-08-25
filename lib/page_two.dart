import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middleware_paginacao/controller.dart';

class PageTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Two'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Get.toNamed('/tres');
          Get.rootDelegate.toNamed('/tres');
        },
      ),
    );
  }
}
