import 'package:bloc1/blocs/home_bloc/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_events.dart';

class HomePageBloc extends Bloc<HomeEvent, HomeState> {
  HomePageBloc() : super(HomeInitialState()) {
    on<FirstNameChanged>((FirstNameChanged event, emit) {
      emit(FirstNameState(event.firstName));
    });

    on<LastNameChanged>((LastNameChanged event, emit) {
      emit(LastNameState(event.lastName));
    });

    on<AgeChanged>((AgeChanged event, emit) {
      emit(AgeState(event.age));
    });
  }
}
