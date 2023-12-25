import 'package:flutter_bloc/flutter_bloc.dart';

class CounterIncrimented {}

class CounterBloc extends Bloc<CounterIncrimented, int> {
  CounterBloc() : super(0);
}
