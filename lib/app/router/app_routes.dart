part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashScreen = _Path.splashScreen;
  static const homePage = _Path.homePage;
}

abstract class _Path {
  _Path._();
  static const splashScreen = "/";
  static const homePage = '/home-page';
}
