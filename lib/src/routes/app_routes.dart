// ignore_for_file: constant_identifier_names, non_constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const UNKNOW_404 = _Paths.UNKNOWN_404;

  static const SPLASH = _Paths.SPLASH;
  static const LOGIN = _Paths.LOGIN;
  static const ON_BOARDING = _Paths.ON_BOARDING;
  static const HOME = _Paths.HOME;
}

abstract class _Paths {
  static const UNKNOWN_404 = '/404';

  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const ON_BOARDING = '/on-boarding';
  static const HOME = '/home';
}
