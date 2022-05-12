part of 'dataharian_bloc.dart';

abstract class DataharianEvent extends Equatable {
  const DataharianEvent();

  @override
  List<Object> get props => [];
}

class ReadDataHarianEvent extends DataharianEvent {
  DateTime date;

  ReadDataHarianEvent({required this.date});
}
