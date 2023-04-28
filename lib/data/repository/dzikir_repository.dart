import '../../model/dzikir/dzikir.dart';

abstract class DzikirRepository {
  Future<List<Dzikir>> find();
  Future<Dzikir> show(String dzikirId);
}
