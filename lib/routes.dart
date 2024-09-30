
import 'package:boxingotask/home_screen/home_binding.dart';
import 'package:boxingotask/home_screen/home_screen.dart';
import 'package:boxingotask/routenames.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

final  routes = [
  GetPage(name: Routenames.homepage, page:() =>  Homescreen(),binding: Homebinding()),

];