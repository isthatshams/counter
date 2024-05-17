part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

class CounterInitial extends CounterState {}

class CounterValueChanged extends CounterState {
  final int counterValue;

  CounterValueChanged({required this.counterValue});
}
