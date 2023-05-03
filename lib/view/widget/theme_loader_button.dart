import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/config/config.dart';
import '../bloc/init/init_cubit.dart';

class ThemeLoaderButton extends StatelessWidget {
  const ThemeLoaderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<InitCubit, InitState, Config>(
      selector: (state) {
        return state.init.config;
      },
      builder: (context, state) {
        final themeIsLight = state.theme.name == 'light';
        final icon =
            themeIsLight ? Icons.dark_mode_rounded : Icons.light_mode_rounded;
        final color =
            themeIsLight ? const Color(0xFF6B4984) : const Color(0xFFFFE87C);
        final theme = themeIsLight ? ThemeMode.dark : ThemeMode.light;

        void toggleTheme() {
          context.read<InitCubit>().setConfig(state.copyWith(theme: theme));
        }

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
