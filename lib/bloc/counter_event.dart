part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class IncrementValue extends CounterEvent {}

class DecrementValue extends CounterEvent {}

class ResetValue extends CounterEvent {}
