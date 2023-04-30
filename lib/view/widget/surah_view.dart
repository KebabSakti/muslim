import 'package:flutter/material.dart';

import '../../core/config/style.dart';
import '../../model/surah/surah.dart';

class SurahView extends StatelessWidget {
  const SurahView({
    super.key,
    required this.lang,
    required this.surah,
  });

  final Surah surah;
  final String lang;

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
            child: lang == 'arabic'
                ? Text(
                    surah.arabic.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: large3x,
                      fontFamily: 'Arabic',
                      color: theme.colorScheme.onSurface,
                    ),
                  )
                : Text(
                    surah.latin.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: medium3x,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
