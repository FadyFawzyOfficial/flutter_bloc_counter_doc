import 'package:bloc/bloc.dart';

//* The CounterCubit class will expose 2 methods:
//*     - increment: adds 1 to the current state
//*     - decrement: subtracts 1 from the current state
//! The type of state the 'CounterCubit' is managing is just an 'int' and the
//! initial state is 0.

/// {@template counter_cubit}
/// A [Cubit] which manges an [int] as its state.
/// {@endtemplate}
class CounterCubit extends Cubit<int> {
  /// {@macro counter_cubit}
  CounterCubit() : super(0);

  /// Add 1 to the current state.
  void increment() => emit(state + 1);

  /// Subtract 1 from the current state.
  void decrement() => emit(state - 1);
}
