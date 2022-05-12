import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:sepran_clone/Resources/repository.dart';

part 'dataharian_event.dart';
part 'dataharian_state.dart';

class DataharianBloc extends Bloc<DataharianEvent, DataharianState> {
  final Repository repo;

  DataharianBloc({required this.repo}) : super(DataharianInitial()) {
    on<ReadDataHarianEvent>((event, emit) async {
      try {
        emit(LoadingDataHarian());
        print('============');
        var result = await repo.getAllTransaction(event.date);

        print('>>>>>>>> $result');
        emit(ReadDataHarianSuccess(result: result));
      } catch (e) {
        print('Error ===>>> $e');
        emit(ErrorDataHarianState(errorDesc: e.toString()));
      }
    });
  }
}
