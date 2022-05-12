part of 'dataharian_bloc.dart';

abstract class DataharianState extends Equatable {
  const DataharianState();

  @override
  List<Object> get props => [];
}

class DataharianInitial extends DataharianState {}

class LoadingDataHarian extends DataharianState {}

class ErrorDataHarianState extends DataharianState {
  String errorDesc;

  ErrorDataHarianState({required this.errorDesc});

  @override
  List<Object> get props => [errorDesc];
}

class ReadDataHarianSuccess extends DataharianState {
  Stream<QuerySnapshot<Object?>> result;

  ReadDataHarianSuccess({
    required this.result,
  });

  @override
  List<Object> get props => [result];
}
