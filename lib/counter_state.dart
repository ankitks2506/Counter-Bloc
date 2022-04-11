class CounterState {
  late int count;

  CounterState init() {
    return CounterState()..count = 0;
  }

  CounterState clone() {
    return CounterState()
      ..count = count; //takes the current value and return it as a stream
  }
}
