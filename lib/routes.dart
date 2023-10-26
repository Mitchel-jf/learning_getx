import 'package:get/get.dart';
import 'package:learning_getx/main.dart';
import 'package:learning_getx/home_binding.dart';

final pages = [
  GetPage(
    name: "/home",
    page: () => const HomePage(),
    binding: HomeBinding(),
  ),
];
