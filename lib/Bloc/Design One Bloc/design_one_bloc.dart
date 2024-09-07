import 'package:bloc/bloc.dart';
// ignore: unused_import
import 'package:meta/meta.dart';

part 'design_one_event.dart';

class DesignOneBloc extends Bloc<DesignOneEvent, int> {
  DesignOneBloc() : super(0) {
    on<DesignOneEvent>((event, emit) {
      switch (event) {
        case DesignOneEvent.Home:
          emit(0);
          break;
        case DesignOneEvent.Brave:
          emit(1);
          break;
        case DesignOneEvent.GPT:
          emit(2);
          break;
      }
    });
  }
}