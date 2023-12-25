part of "counter_bloc.dart";

sealed class CounterEvent {}

class CounterIncrimented extends CounterEvent {}

class CounterDecremented extends CounterEvent {}
