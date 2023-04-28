import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';

import 'controller/bookmark_controller_other.dart';
import 'controller/config_controller_other.dart';
import 'controller/dzikir_controller_other.dart';
import 'data/local/bookmark_local.dart';
import 'data/local/config_local.dart';
import 'data/local/dzikir_local.dart';
import 'core/config/app_theme.dart';
import 'core/config/routes.dart';
import 'core/helper/simple_bloc_observer.dart';
import 'view/bloc/config/config_cubit.dart';

void main() async {
  await _init();

  runApp(const MyApp());
}

Future _init() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer = SimpleBlocObserver();

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ConfigCubit()),
      ],
      child: BlocSelector<ConfigCubit, ConfigState, ThemeMode>(
        selector: (state) {
          return state.config.theme;
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
