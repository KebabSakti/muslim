import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/config/config.dart';
import '../bloc/config/config_cubit.dart';

class ThemeLoaderButton extends StatelessWidget {
  const ThemeLoaderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigCubit, ConfigState>(
      builder: (context, state) {
        final config = state.config;

        bool themeIsLight() {
          final isLightTheme = (config.theme == ThemeMode.light);

          return isLightTheme;
        }

        void toggleTheme() {
          final theme = config.theme == ThemeMode.light
              ? ThemeMode.dark
              : ThemeMode.light;

          context.read<ConfigCubit>().update(Config(theme: theme));
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
