import "package:counter/bloc/counter_bloc.dart";
import "package:counter/widgets/FloatingButtons.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "You have pushed the button this many times:",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterValueChanged) {
                  return Text(
                    state.counterValue.toString(),
                    style: const TextStyle(fontSize: 30),
                  );
                } else if (state is CounterInitial) {
                  return const Text(
                    "0",
                    style: TextStyle(fontSize: 30),
                  );
                } else {
                  return const SizedBox(
                    height: 10,
                  );
                }
              },
            ),
          ],
        )),
        floatingActionButton: const FloatingButtons());
  }
}
