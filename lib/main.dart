import 'package:flutter/material.dart';
import 'package:muslim/core/config/routes.dart';

import 'core/config/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muslim',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routes: Routes.list(),
      debugShowCheckedModeBanner: false,
    );
  }
}
