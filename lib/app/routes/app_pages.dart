import 'package:get/get.dart';
import 'package:kitchenkiosk/app/data/models/product_model.dart';
import 'package:kitchenkiosk/app/ui/pages/home_page.dart';

import 'app_routes.dart';

abstract class AppPages {
  late Product product;
  static final pages = [
    // GetPage(
    //   name: Routes.splash,
    //   page: () => const SplashScreen(),
    // ),
    // GetPage(
    //   name: Routes.categories,
    //   page: () => const CategoriesPage(),
    // ),
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
    ),
    // GetPage(
    //   name: Routes.screen,
    //   page: () => SplashScreen(),
    // ),
  ];
}
