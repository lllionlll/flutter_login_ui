import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'casio_event.dart';
part 'casio_state.dart';

class CasioBloc extends Bloc<CasioEvent, CasioState> {
  CasioBloc() : super(CasioInitial()) {
    on<CasioEvent>((event, emit) {

    });
    on<CasioEnterValueEvent>((event, emit) {
      CasioEnterValueState(text: '1234');
    });
  }
}
