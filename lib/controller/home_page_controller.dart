import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;
  var thisPage = 1.obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this, initialIndex: thisPage.value);
    tabController.addListener(
      () {thisPage.value = tabController.index;},
    );
  }
}
