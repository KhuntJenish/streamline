import 'package:get/get.dart';
import 'package:streamline/src/features/on_boarding/on_boarding_screen.dart';

import '../features/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnBoardingScreen(),
    ),
    // GetPage(
    //   name: _Paths.CREATE_ACCOUNT,
    //   page: () => CreateAccountScreen(),
    // ),
    // GetPage(
    //   name: _Paths.PASSWORD,
    //   page: () => const PasswordScreen(),
    // ),
    // GetPage(
    //   name: _Paths.PASSWORD_RECOVERY,
    //   page: () => PasswordRecoveryScreen(),
    // ),
    // GetPage(
    //   name: _Paths.PASSWORD_RECOVERY_CODE,
    //   page: () => const PasswordRecoveryCodeScreen(),
    // ),
  ];
}

class BindingsX {
  static BindingsBuilder initialBindings() {
    return BindingsBuilder(() {});
  }
}
