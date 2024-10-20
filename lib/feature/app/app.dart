import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: RouteGenerator.getRoute(),
      initialRoute: NamedRoutes.profileScreen,
      
      //home: const SplashScreen(),
    );
  }
}
