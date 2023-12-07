import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void incriment() {
    print("Before: $state");
    emit(state + 1);
    print("After: $state");
  }
}
