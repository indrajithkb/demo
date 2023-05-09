import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      int incrementCounter = state.count + 1;
      return emit(CounterState(count: incrementCounter));
    });

    on<Decrement>((event, emit) {
      int decrementCounter = state.count - 1;
      return emit(CounterState(count: decrementCounter));
    });
  }
}
