import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => Container(),
    ),
    // GetPage(
    //   name: _Paths.LOGIN,
    //   page: () => const LoginScreen(),
    // ),
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
