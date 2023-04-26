import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/init/init_cubit.dart';

class ThemeLoaderButton extends StatelessWidget {
  const ThemeLoaderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InitCubit, InitState>(
      builder: (context, state) {
        final config = state.init.config;

        bool themeIsLight() {
          final isLightTheme = (config.theme == ThemeMode.light);

          return isLightTheme;
        }

        void toggleTheme() {
          final theme = config.theme == ThemeMode.light
              ? ThemeMode.dark
              : ThemeMode.light;

          context.read<InitCubit>().setConfig(config.copyWith(theme: theme));
        }

        final icon =
            themeIsLight() ? Icons.dark_mode_rounded : Icons.light_mode_rounded;

        final color =
            themeIsLight() ? const Color(0xFF6B4984) : const Color(0xFFFFE87C);

        return IconButton(
          onPressed: toggleTheme,
          icon: Icon(
            icon,
            color: color,
          ),
        );
      },
    );
  }
}
