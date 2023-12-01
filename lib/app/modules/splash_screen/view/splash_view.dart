import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.calculate,
            size: 100,
            color: Colors.amber,
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 35,
            width: 35,
            child: FittedBox(
                child: CupertinoActivityIndicator(
              color: Colors.white,
            )),
          ),
        ],
      )),
    );
  }
}
