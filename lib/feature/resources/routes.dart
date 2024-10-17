import '../presentation/views/authentication/profile_screen.dart';
import '../presentation/views/authentication/register_screen.dart';

import '../presentation/views/authentication/login_screen.dart';
import '../presentation/views/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class NamedRoutes {
  NamedRoutes._();

  static const String splashScreen = "/splashScreen";
  static const String loginScreen = "/loginScreen";
  static const String registerScreen = "/registerScreen";
  static const String profileScreen = "/profileScreen";
}

class RouteGenerator {
  static List<GetPage> getRoute() {
    return [
      GetPage(name: NamedRoutes.splashScreen, page: () => const SplashScreen()),
      GetPage(name: NamedRoutes.loginScreen, page: () => const LoginScreen()),
      GetPage(name: NamedRoutes.registerScreen, page: () => const RegisterScreen()),
      GetPage(name: NamedRoutes.profileScreen, page: () => const ProfileScreen()),
    ];
  }
}
