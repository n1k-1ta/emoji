import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'home_controller.dart';
class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        ),
      body: GestureDetector(
        onTap: () => controller.changeIndex(),
        child: Center(
          child: Obx(() => Text(
            controller.getEmoji(),
            style: const TextStyle(fontSize: 80),
          )),
        ),
      ),
    );
  }
}