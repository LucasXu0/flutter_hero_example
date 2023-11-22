import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hero_example/router_config.dart';

final homeRoute = GoRoute(
  path: RoutePaths.home,
  pageBuilder: (context, state) => const MaterialPage(
    key: ValueKey(RoutePaths.home),
    child: HomePage(),
  ),
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Page'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.push(RoutePaths.floatingCards);
          },
          child: const Text(
            'go to the card page\nin floating status',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
