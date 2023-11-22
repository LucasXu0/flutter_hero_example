import 'package:flutter/material.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
    required this.index,
    required this.tag,
  });

  final int index;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Hero(
        tag: tag,
        child: Column(
          children: [
            // details
            Image.network(
              'https://picsum.photos/200/300?random=$index',
              width: double.infinity,
              height: 400,
              fit: BoxFit.fitWidth,
            ),
            for (var i = 0; i < 100; i++)
              Row(
                children: [
                  const Icon(Icons.calendar_month),
                  const Spacer(),
                  Text(
                    'Hello world $i',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
