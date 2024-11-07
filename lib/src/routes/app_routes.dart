// ignore_for_file: constant_identifier_names, non_constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const UNKNOW_404 = _Paths.UNKNOWN_404;

  static const SPLASH = _Paths.SPLASH;
  static const LOGIN = _Paths.LOGIN;
  static const CREATE_ACCOUNT = _Paths.CREATE_ACCOUNT;
  static const PASSWORD = _Paths.PASSWORD;
  static const PASSWORD_RECOVERY = _Paths.PASSWORD_RECOVERY;
  static const PASSWORD_RECOVERY_CODE = _Paths.PASSWORD_RECOVERY_CODE;
  static const NEW_PASSWORD = _Paths.NEW_PASSWORD;
}

abstract class _Paths {
  static const UNKNOWN_404 = '/404';

  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const CREATE_ACCOUNT = '/create-account';
  static const PASSWORD = '/password';
  static const PASSWORD_RECOVERY = '/password-recovery';
  static const PASSWORD_RECOVERY_CODE = '/password-recovery-code';
  static const NEW_PASSWORD = '/new-password';
}
