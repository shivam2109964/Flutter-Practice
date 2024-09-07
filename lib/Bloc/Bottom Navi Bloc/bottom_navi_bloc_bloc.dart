import 'package:bloc/bloc.dart';
// ignore: unused_import
import 'package:meta/meta.dart';

part 'bottom_navi_bloc_event.dart';

class BottomNaviBloc extends Bloc<BottomNaviBlocEvent, int> {
  BottomNaviBloc() : super(0) {
    on<BottomNaviBlocEvent>((event, emit) {
      switch (event) {
        case BottomNaviBlocEvent.Home:
          emit(0);
          break;
        case BottomNaviBlocEvent.Earn:
          emit(1);
          break;
        case BottomNaviBlocEvent.Account:
          emit(2);
          break;
      }
    });
  }
}