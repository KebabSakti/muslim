import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../../core/helper/utility.dart';
import '../../model/dzikir/dzikir.dart';
import '../repository/dzikir_repository.dart';

class DzikirLocal implements DzikirRepository {
  @override
  Future<List<Dzikir>> find() async {
    final jsonString = await rootBundle.loadString("asset/data/dzikir.json");

    final parsed = await compute(parseJson, jsonString);
    final results = List<Dzikir>.from(parsed.map((e) => Dzikir.fromJson(e)));

    return results;
  }

  @override
  Future<Dzikir> show(String dzikirId) async {
    final dzikirs = await find();
    final results = dzikirs.firstWhere((element) => element.id == dzikirId);

    return results;
  }
}
