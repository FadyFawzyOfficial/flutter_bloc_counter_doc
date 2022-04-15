import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'bloc_observer.dart';

//* We're initializing the CounterObserver and calling runApp with the
//* CounterApp widget which renders the Counter Screen and its Features (logic).
void main() {
  BlocOverrides.runZoned(
    () => runApp(const CounterApp()),
    blocObserver: CounterObserver(),
  );
}
