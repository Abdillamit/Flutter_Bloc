import 'package:counter_blc/cubit/counter_cubit.dart';
import 'package:counter_blc/inc_dnc_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  static Page<void> page() => const MaterialPage<void>(
          child: MyHomePage(
        title: 'Flutter Demo Home Page',
      ));
  final String title;
  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, int>(
              bloc: counterCubit,
              builder: (context, counter) {
                return Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const IncDecPage(),
          ));
          print("NextPage");
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
