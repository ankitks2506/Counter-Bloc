import 'package:albums_example/counter_state.dart';
import 'package:albums_example/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState().init());

  Future<CounterState> init() async {
    return state.clone();
  }

  CounterState increment() {
    return state.clone()..count = ++state.count;
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
