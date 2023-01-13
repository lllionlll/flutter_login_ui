part of 'casio_bloc.dart';

abstract class CasioEvent extends Equatable {
  const CasioEvent();

  @override
  List<Object> get props => [];
}

class CasioInitialEvent extends CasioEvent {}

class CasioEnterValueEvent extends CasioEvent {}