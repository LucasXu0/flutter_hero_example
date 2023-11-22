import 'package:go_router/go_router.dart';
import 'package:hero_example/screens/floating_cards_screen.dart';
import 'package:hero_example/screens/full_screen_card_screen.dart';
import 'package:hero_example/screens/home_screen.dart';

class RoutePaths {
  static const home = '/';
  static const card = '/card';
  static const floatingCards = '/floating_cards';
}

final routerConfig = GoRouter(
  initialLocation: RoutePaths.home,
  routes: [
    homeRoute,
    cardRoute,
    floatingCardsRoute,
  ],
);
