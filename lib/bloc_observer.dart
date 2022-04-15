import 'package:bloc/bloc.dart';

//* Create a BlocObserver which will help us observe all state changes in the
//* application.
//* In this case, we're only overriding 'onChange' to see all state changes that
//* occur.
//! Note: 'onChange' works the same way for both 'Bloc' and 'Cubit' instances.

/// {@template counter_observer}
/// [BlocObserver] for the counter application which observes all state changes.
/// {@endtemplate}
class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
