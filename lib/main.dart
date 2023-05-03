import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';

import 'controller/bookmark_controller.dart';
import 'controller/config_controller.dart';
import 'controller/dzikir_controller.dart';
import 'core/config/app_theme.dart';
import 'core/config/routes.dart';
import 'data/local/bookmark_local.dart';
import 'data/local/config_local.dart';
import 'data/local/dzikir_local.dart';
import 'view/bloc/init/init_cubit.dart';

void main() async {
  await _init();

  runApp(const MyApp());
}

Future _init() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Bloc.observer = SimpleBlocObserver();

  _services();
}

void _services() {
  final getIt = GetIt.I;

  getIt.registerLazySingleton(() => ConfigController(ConfigLocal()));
  getIt.registerLazySingleton(() => DzikirController(DzikirLocal()));
  getIt.registerLazySingleton(() => BookmarkController(BookmarkLocal()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InitCubit(),
      child: BlocSelector<InitCubit, InitState, ThemeMode>(
        selector: (state) {
          return state.init.config.theme;
        },
        builder: (context, state) {
          return MaterialApp(
            title: 'Muslim',
            themeMode: state,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            routes: Routes.list(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
