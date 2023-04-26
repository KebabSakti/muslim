import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../controller/dzikir_controller.dart';
import '../../../model/dzikir/dzikir.dart';

part 'dzikirs_cubit.freezed.dart';
part 'dzikirs_state.dart';

class DzikirsCubit extends Cubit<DzikirsState> {
  DzikirsCubit() : super(const DzikirsState());

  final _dzikirController = DzikirController();

  Future load(BuildContext context) async {
    final results = await _dzikirController.load(context);

    emit(DzikirsState(dzikirs: results));
  }
}
