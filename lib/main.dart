import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middleware_paginacao/controller.dart';
import 'package:middleware_paginacao/middlware.dart';
import 'package:middleware_paginacao/page_one.dart';
import 'package:middleware_paginacao/page_three.dart';
import 'package:middleware_paginacao/page_two.dart';

void main() {

  Get.put(Controller());

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'Flutter Demo',
      enableLog: true,
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => PageOne(),
        ),
        GetPage(
          name: '/dois',
          page: () => PageTwo(),
        ),
        GetPage(
          name: '/tres',
          page: () => PageThree(),
          middlewares: [
            Middleware(),
          ],
        ),
        GetPage(
          name: '/quatro',
          page: () => PageThree(),
          middlewares: [
            Middleware(),
          ],
        ),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


