part of 'casio_bloc.dart';

abstract class CasioState extends Equatable {
  const CasioState();
}

class CasioInitial extends CasioState {
  const CasioInitial();

  @override
  List<Object> get props => [];
}


class CasioEnterValueState extends CasioState {
  const CasioEnterValueState({required this.text});
  final String text;
  @override
  List<Object> get props => [text];
}
