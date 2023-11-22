import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hero_example/router_config.dart';
import 'package:hero_example/screens/widgets/card_page.dart';

class CardHeader extends StatelessWidget implements PreferredSizeWidget {
  const CardHeader({
    super.key,
    required this.type,
    required this.tag,
  });

  final CardType type;
  final String tag;

  @override
  Widget build(BuildContext context) {
    final child = switch (type) {
      CardType.floating => const _FloatingCardHeader(),
      CardType.fullScreen => const _FullScreenCardHeader(),
    };
    return Hero(
      tag: tag,
      child: child,
    );
  }

  @override
  Size get preferredSize => switch (type) {
        CardType.floating => const Size.fromHeight(48),
        CardType.fullScreen => const Size.fromHeight(kToolbarHeight),
      };
}

class _FloatingCardHeader extends StatelessWidget {
  const _FloatingCardHeader();

  @override
  Widget build(BuildContext context) {
    // close button, expand button, more actions button
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () {
            context.pop();
          },
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.fullscreen_outlined),
          onPressed: () {
            context.push(
              RoutePaths.card,
            );
          },
        ),
        IconButton(
          icon: const Icon(Icons.more_horiz_rounded),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _FullScreenCardHeader extends StatelessWidget {
  const _FullScreenCardHeader();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.close_rounded),
        onPressed: () {
          context.pop();
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_horiz_rounded),
          onPressed: () {},
        ),
      ],
    );
  }
}
