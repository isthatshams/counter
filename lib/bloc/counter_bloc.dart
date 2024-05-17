import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counterValue = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementValue) {
        counterValue++;
        emit(CounterValueChanged(counterValue: counterValue));
      } else if (event is DecrementValue) {
        counterValue--;
        emit(CounterValueChanged(counterValue: counterValue));
      } else {
        counterValue = 0;
        emit(CounterValueChanged(counterValue: counterValue));
      }
    });
  }
}
