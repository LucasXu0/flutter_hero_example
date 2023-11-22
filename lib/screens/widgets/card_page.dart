import 'package:flutter/material.dart';
import 'package:hero_example/screens/widgets/card_details.dart';
import 'package:hero_example/screens/widgets/card_header.dart';
import 'package:hero_example/screens/widgets/hero_tags.dart';

enum CardType {
  floating,
  fullScreen,
}

class FloatingCardPage extends StatelessWidget {
  const FloatingCardPage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    // header, details, footer
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CardHeader(
            type: CardType.floating,
            tag: cardHeroTag(CardHeroTag.header, external: '$index'),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: CardDetails(
                index: index,
                tag: cardHeroTag(CardHeroTag.detail, external: '$index'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FullScreenCardPage extends StatelessWidget {
  const FullScreenCardPage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CardHeader(
        type: CardType.fullScreen,
        tag: cardHeroTag(CardHeroTag.header, external: '$index'),
      ),
      body: SingleChildScrollView(
        child: CardDetails(
          index: index,
          tag: cardHeroTag(CardHeroTag.detail, external: '$index'),
        ),
      ),
    );
  }
}
