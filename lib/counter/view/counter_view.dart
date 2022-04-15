import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

//* The CounterView is responsible for rendering the current count and rendering
//* 2 FloatingActionButton to increment/decrement the counter.

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided [CounterCubit] state and
/// notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        //* A 'BlocBuilder' is used to wrap the 'Text' widget in order to
        //* update the text any time the CounterCubit state changes.
        //! Note: Only the Text widget is wrapped in a BlocBuilder because
        //! that is the only widget that needs to be rebuilt in response to
        //! state changes in the CounterCubit. Avoid unnecessarily wrapping
        //! widgets that don't need to be rebuilt when a state changes.
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) => Text(
            '$state',
            style: textTheme.headline2,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            //* context.read<CounterCubit>() is used to look-up the closest
            //* Counter Cubit instance.
            onPressed: context.read<CounterCubit>().increment,
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: context.read<CounterCubit>().decrement,
          ),
        ],
      ),
    );
  }
}
