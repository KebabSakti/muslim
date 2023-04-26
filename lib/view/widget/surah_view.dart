import 'package:flutter/material.dart';

import '../../core/config/style.dart';
import '../../model/surah/surah.dart';

class SurahView extends StatelessWidget {
  const SurahView({
    super.key,
    required this.surah,
  });

  final Surah surah;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: medium, right: medium, top: medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Surah ke ${surah.number}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: theme.colorScheme.onSurface,
                ),
              ),
              Text(
                '(Baca ${surah.count} kali)',
                textAlign: TextAlign.center,
                style: TextStyle(color: theme.colorScheme.onSurface),
              ),
            ],
          ),
        ),
        const SizedBox(height: medium),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: medium),
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Text(
                  surah.arabic.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: large3x,
                    fontFamily: 'Arabic',
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
