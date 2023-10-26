import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/main_controller.dart';
import 'package:learning_getx/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      initialRoute: "/home",
      getPages: pages,
    );
  }
}

class HomePage extends GetView<MainController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text(
            controller.title.value,
            style: const TextStyle(fontSize: 80),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.getPost,
        child: const Icon(Icons.add),
      ),
    );
  }
}
