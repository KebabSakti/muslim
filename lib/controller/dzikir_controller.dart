import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../core/helper/utility.dart';
import '../model/dzikir/dzikir.dart';
import '../model/surah/surah.dart';

class DzikirController {
  Future<List<Dzikir>> load(BuildContext context) async {
    final jsonString = await DefaultAssetBundle.of(context)
        .loadString("asset/data/dzikir.json");

    final parsed = await compute(parseJson, jsonString);
    final results = List<Dzikir>.from(parsed.map((e) => Dzikir.fromJson(e)));

    return results;
  }

  Future<Dzikir> dzikir(String dzikirId, List<Dzikir> dzikirs) async {
    final results = dzikirs.firstWhere((element) => element.id == dzikirId);

    return results;
  }

  Future<Surah> surah(String surahId, Dzikir dzikir) async {
    final results =
        dzikir.surah!.firstWhere((element) => element.id == surahId);

    return results;
  }
}
