import 'package:get/get.dart';
import 'home_page_controller.dart';

class WhatsappBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController(),permanent: true);
  }
}