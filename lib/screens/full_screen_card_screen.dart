import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hero_example/router_config.dart';
import 'package:hero_example/screens/widgets/card_page.dart';

final cardRoute = GoRoute(
  path: RoutePaths.card,
  pageBuilder: (context, state) {
    final index = state.uri.queryParameters['index'] as int? ?? 0;
    return MaterialPage(
      key: const ValueKey(RoutePaths.card),
      child: FullScreenCardScreen(
        index: index,
      ),
    );
  },
);

class FullScreenCardScreen extends StatelessWidget {
  const FullScreenCardScreen({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return FullScreenCardPage(
      index: index,
    );
  }
}
