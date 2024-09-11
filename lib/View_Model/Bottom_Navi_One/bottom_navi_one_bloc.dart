import 'package:bloc/bloc.dart';
// ignore: unused_import
import 'package:meta/meta.dart';

part 'bottom_navi_one_event.dart';

class BottomNaviOneBloc extends Bloc<BottomNaviOneEvent, int> {
  BottomNaviOneBloc() : super(0) {
    on<BottomNaviOneEvent>(
      (event, emit) {
        switch (event) {
          case BottomNaviOneEvent.home:
            emit(0);
            break;
          case BottomNaviOneEvent.brave:
            emit(1);
            break;
          case BottomNaviOneEvent.gpt:
            emit(2);
            break;
          case BottomNaviOneEvent.security:
            emit(3);
            break;
          case BottomNaviOneEvent.play:
            emit(4);
            break;
        }
      },
    );
  }
}
