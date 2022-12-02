import 'package:counter/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            const Text(
              'Counter Vlaue is :',
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterInitial) {
                  return const Text(
                    '0',
                    style: TextStyle(color: Colors.grey, fontSize: 30),
                  );
                } else if (state is CounterValueChangeState) {
                  return Text(
                    state.counter.toString(),
                    style: TextStyle(color: Colors.grey, fontSize: 30),
                  );
                }else{
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: const ButtonsWidget(),
    );
  }
}
