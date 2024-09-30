import 'package:boxingotask/home_screen/home_binding.dart';
import 'package:boxingotask/routenames.dart';
import 'package:boxingotask/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
       designSize: const Size(360, 690),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routenames.homepage,
        initialBinding: Homebinding(),
        getPages: routes,
      
      ),
    );
  }
  }

