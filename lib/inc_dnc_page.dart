import "package:counter_blc/bloc/counter_bloc.dart";
import "package:counter_blc/cubit/counter_cubit.dart";
import "package:counter_blc/home_page.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: IncDecPage());

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              counterBloc.add(CounterIncrimented());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => counterBloc.add(CounterDecremented()),
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    const MyHomePage(title: 'Flutter Demo Home Page'),
              ));
            },
            child: const Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
