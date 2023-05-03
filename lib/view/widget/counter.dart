import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/counter/counter_cubit.dart';

class Counter extends StatelessWidget {
  const Counter({
    super.key,
    required this.bloc,
    required this.listener,
  });

  final CounterCubit bloc;
  final void Function(BuildContext, CounterState) listener;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Material(
          color: Colors.transparent,
          child: Ink(
            height: 100,
            width: 100,
            child: InkWell(
              onTap: () {
                bloc.decrement();
              },
              borderRadius: BorderRadius.circular(100),
              child: const Center(
                child: Icon(
                  Icons.remove,
                  size: 80,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
        BlocConsumer<CounterCubit, CounterState>(
          bloc: bloc,
          listener: listener,
          builder: (context, counterState) {
            return GestureDetector(
              onLongPress: () {
                bloc.reset();
              },
              child: Text(
                '${counterState.count}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.onSurface,
                ),
              ),
            );
          },
        ),
        Material(
          color: Colors.transparent,
          child: Ink(
            height: 100,
            width: 100,
            child: InkWell(
              onTap: () {
                bloc.increment();
              },
              borderRadius: BorderRadius.circular(100),
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 80,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
