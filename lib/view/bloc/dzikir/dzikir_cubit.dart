import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../controller/dzikir_controller_other.dart';
import '../../../model/dzikir/dzikir.dart';

part 'dzikir_cubit.freezed.dart';
part 'dzikir_state.dart';

class DzikirCubit extends Cubit<DzikirState> {
  DzikirCubit() : super(const DzikirState());

  final _dzikirController = GetIt.I<DzikirController>();

  Future show(String dzikirId) async {
    try {
      emit(state.copyWith(loading: true));

      final results = await _dzikirController.show(dzikirId);

      emit(DzikirState(dzikir: results));
    } on Exception catch (e) {
      emit(state.copyWith(loading: false, exception: e));
    }
  }
}
