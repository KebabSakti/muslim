import 'package:flutter/material.dart';
import 'package:muslim/view/dzikir/dzikir.dart';

import '../../view/home/home.dart';
import 'const.dart';

class Routes {
  static Map<String, Widget Function(BuildContext context)> list() {
    return {
      home: (context) => const Home(),
      dzikir: (context) {
        final args = ModalRoute.of(context)!.settings.arguments;
        return Dzikir(type: args as String);
      },
    };
  }
}
