import 'package:myapp/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.house_siding_sharp, name: 'HomeScreen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt_rounded, name: 'ListView1', screen: const ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.line_style_rounded, name: 'ListView2', screen: const ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.card_membership_rounded, name: 'CardScreen', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.bus_alert, name: 'AlertScreen', screen: const AlertScreen()),
    MenuOption(route: 'login_cafe', icon: Icons.coffee, name: 'LoginCafe', screen: const LoginCafeScreen()),
    MenuOption(route: 'avatar', icon: Icons.all_inclusive_sharp, name: 'AvatarScreen', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.animation_outlined, name: 'AnimatedScreen', screen: const AnimatedScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
