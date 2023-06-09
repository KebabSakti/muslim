import 'package:flutter/material.dart';
import '../../view/ui/init/init.dart';
import '../../view/ui/dzikir/dzikir.dart';
import '../../view/ui/home/home.dart';
import 'const.dart';

class Routes {
  static Map<String, Widget Function(BuildContext context)> list() {
    return {
      init: (context) => const Init(),
      home: (context) => const Home(),
      dzikir: (context) {
        final args = ModalRoute.of(context)!.settings.arguments;
        return Dzikir(dzikirId: args as String);
      },
    };
  }
}
