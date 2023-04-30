import '../data/repository/dzikir_repository.dart';
import '../model/dzikir/dzikir.dart';
import '../model/surah/surah.dart';

class DzikirController {
  final DzikirRepository _dzikirRepository;

  DzikirController(this._dzikirRepository);

  Future<List<Dzikir>> find() async {
    final results = await _dzikirRepository.find();

    return results;
  }

  Dzikir dzikir(String dzikirId, List<Dzikir> dzikirs) {
    final results = dzikirs.firstWhere((element) => element.id == dzikirId);

    return results;
  }

  Surah surah(String surahId, List<Surah> surahs) {
    final results = surahs.firstWhere((element) => element.id == surahId);

    return results;
  }
}
