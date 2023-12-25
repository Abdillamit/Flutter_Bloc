import "package:counter_blc/cubit/counter_cubit.dart";
import "package:counter_blc/home_page.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: IncDecPage());

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () => counterCubit.incriment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => counterCubit.decrement(),
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
              print("NextPage");
            },
            child: const Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
