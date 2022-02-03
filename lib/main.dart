import 'controller/binding.dart';
import 'view/pages/page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: WhatsappBinding(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}