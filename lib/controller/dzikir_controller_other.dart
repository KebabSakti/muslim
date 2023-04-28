import '../data/repository/dzikir_repository.dart';
import '../model/dzikir/dzikir.dart';

class DzikirController {
  final DzikirRepository _dzikirRepository;

  DzikirController(this._dzikirRepository);

  Future<List<Dzikir>> find() async {
    final results = await _dzikirRepository.find();

    return results;
  }

  Future<Dzikir> show(String dzikirId) async {
    final results = await _dzikirRepository.show(dzikirId);

    return results;
  }
}
