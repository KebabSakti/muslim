import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim/core/config/const.dart';

import '../../bloc/init/init_cubit.dart';

class Init extends StatefulWidget {
  const Init({super.key});

  @override
  State<Init> createState() => _InitState();
}

class _InitState extends State<Init> {
  void _initStateListener(BuildContext context, InitState state) {
    Navigator.of(context).pushNamedAndRemoveUntil(home, (route) => false);
  }

  Future _init() async {
    context.read<InitCubit>().load(context);
  }
  
  @override
  void initState() {
    _init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<InitCubit, InitState>(
      listener: _initStateListener,
      child: const Scaffold(),
    );
  }
}
