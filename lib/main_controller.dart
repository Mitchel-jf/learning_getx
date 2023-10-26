import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:learning_getx/api_response.dart';
import 'package:learning_getx/bot_toast.dart';

class MainController extends GetxController {
  @override
  void onInit() {
    // getPost();
    super.onInit();
  }

  var counter = 0.obs;

  // RxInt, RxDouble, RxString, RxBool

  void increment() => counter.value++;

  var title = "Press add to load title".obs;

  Future<ApiResponse> getPost() async {
    var dio = Dio();

    const url = "https://jsonplaceholder.typicode.com/posts/1";
    try {
      showLoading();

      await Future.delayed(5.seconds);
      var res = await dio.get(url);

      if (kDebugMode) print(res.data);
      var apiRes = ApiResponse.fromJson(res.data);
      title.value = apiRes.title;

      cancelLoading();
      return apiRes;
    } catch (e) {
      if (kDebugMode) print("Oopssss an error occurred");
      if (kDebugMode) print(e);
      cancelLoading();
      rethrow;
    }
  }
}
