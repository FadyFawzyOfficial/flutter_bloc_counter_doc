import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';
import 'counter_view.dart';

/// The CounterScreen widget is responsible for creating a CounterCubit and
/// providing it to the CounterView.

//* Note: It's important to separate or decouple the creation of a 'Cubit' from
//* the consumption of a 'Cubit' in order to have code that is much more
//* testable and reusable.

/// {@template counter_screen}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}
class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}
