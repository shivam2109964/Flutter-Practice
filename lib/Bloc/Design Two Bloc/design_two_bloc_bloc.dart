import 'package:bloc/bloc.dart';
// ignore: unused_import
import 'package:meta/meta.dart';

part 'design_two_bloc_event.dart';

class DesignTwoBloc extends Bloc<DesignTwoBlocEvent, int> {
  DesignTwoBloc() : super(0) {
    on<DesignTwoBlocEvent>((event, emit) {
      switch (event) {
        case DesignTwoBlocEvent.Home:
          emit(0);
          break;
        case DesignTwoBlocEvent.Search:
          emit(1);
          break;
        case DesignTwoBlocEvent.Favorite:
          emit(2);
          break;
        case DesignTwoBlocEvent.Profile:
          emit(3);
          break;
      }
    });
  }
}
