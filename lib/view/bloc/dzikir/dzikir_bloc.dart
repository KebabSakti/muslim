import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../controller/dzikir_controller.dart';
import '../../../model/dzikir/dzikir.dart';

part 'dzikir_bloc.freezed.dart';
part 'dzikir_event.dart';
part 'dzikir_state.dart';

class DzikirBloc extends Bloc<DzikirEvent, DzikirState> {
  final _dzikirController = DzikirController();

  DzikirBloc() : super(const _Initial()) {
    on<DzikirEvent>((event, emit) async {
      await event.when(
        dzikir: (dzikirId, dzikirs) async {
          emit(const _Loading());
          final results = _dzikirController.dzikir(dzikirId, dzikirs);
          emit(_Load(dzikir: results));
        },
      );
    });
  }
}
