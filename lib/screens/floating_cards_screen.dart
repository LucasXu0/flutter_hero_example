import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hero_example/router_config.dart';
import 'package:hero_example/screens/widgets/card_page.dart';

final floatingCardsRoute = GoRoute(
  path: RoutePaths.floatingCards,
  pageBuilder: (context, state) => CustomTransitionPage(
    child: const FloatingCardsPage(),
    opaque: false,
    barrierDismissible: true,
    barrierColor: Colors.black38,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: animation,
        child: child,
      );
    },
  ),
);

class FloatingCardsPage extends StatelessWidget {
  const FloatingCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width * 0.8;
    final height = size.height * 0.6;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 96),
      child: Swiper(
        itemCount: 20,
        viewportFraction: 0.8,
        scale: 0.9,
        itemWidth: width,
        itemHeight: height,
        itemBuilder: (context, index) {
          return FloatingCardPage(
            index: index,
          );
        },
      ),
    );
  }
}
