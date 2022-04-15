import 'package:flutter/material.dart';

import 'counter/counter.dart';

//* CounterApp will be a MaterialApp and is specifying the home as CounterScreen.
//! Note: We are extending 'MaterialApp' because 'CounterApp' is a MaterialApp.
//! In most cases, we're going to be creating StatelessWidget or StatefulWidget
//! instances and composing widgets in build but in this case there are no
//! widgets to compose so it's simpler to just extend MaterialApp.

/// {@template counter_app}
/// A [MaterialAlp] which sets the home to [CounterScreen].
/// {@endtemplate}
class CounterApp extends MaterialApp {
  /// {@macro counter_app}
  const CounterApp({Key? key}) : super(key: key, home: const CounterScreen());
}
