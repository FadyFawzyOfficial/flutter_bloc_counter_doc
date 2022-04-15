import 'package:flutter/material.dart';

//* Note: I just build this "now" to be available to export (to be imported)
//* into anywhere depend on the Counter View (UI).
//! I want to be able to build the UI widgets using hot reload feature.

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
