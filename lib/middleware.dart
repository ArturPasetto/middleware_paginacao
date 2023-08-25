import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middleware_paginacao/controller.dart';


class Middleware extends GetMiddleware {

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {

    debugPrint("## redirect delegate history = ${Get.rootDelegate.history.map((e) => e.currentPage?.name).toList()}");
    debugPrint("## redirect delegate name = ${route.currentPage?.name}");
    debugPrint("## redirect delegate key = ${route.currentPage?.key}");

    if(Controller.to.token == null){
      await Controller.to.getToken();
    }

    if(Controller.to.isValid()){
      return route;
    }

    if(Get.rootDelegate.history.isEmpty){
      return GetNavConfig.fromRoute('/');
    }

    return null;

    // if(Get.rootDelegate.history.map((e) => e.currentPage?.name).contains('/')){
    //   return null;
    // }
    //
    // return GetNavConfig.fromRoute('/');
  }


  // @override
  // RouteSettings? redirect(String? route) {
  //   debugPrint("### redirect token = ${Controller.to.token}");
  //   debugPrint("### redirect route = $route");
  //
  //   if(Controller.to.token == null){
  //     return const RouteSettings(name: '/');
  //   }
  //
  //   return null;
  // }
  //
  // @override
  // GetPage? onPageCalled(GetPage? page) {
  //
  //   debugPrint("## page name = ${page?.name}");
  //   debugPrint("## page title = ${page?.title}");
  //   debugPrint("## page path = ${page?.path.keys}");
  //
  //   return page;
  // }
}
