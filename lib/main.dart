import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/core/routes/app_pages.dart';
import 'package:myportfolio/core/routes/app_routes.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
  
      debugShowCheckedModeBanner: false,
      title: 'Shahzaib Khan Portfolio',
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      
      ),
    );
  }
}
