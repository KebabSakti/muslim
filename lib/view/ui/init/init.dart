import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/config/const.dart';
import '../../bloc/config/config_cubit.dart';

class Init extends StatefulWidget {
  const Init({super.key});

  @override
  State<Init> createState() => _InitState();
}

class _InitState extends State<Init> {
  void _configStateListener(BuildContext context, ConfigState state) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        dzikir, arguments: 'dzikir-pagi', (route) => false);
  }

  Future _init() async {
    context.read<ConfigCubit>().load();
  }

  @override
  void initState() {
    _init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConfigCubit, ConfigState>(
      listener: _configStateListener,
      child: const Scaffold(),
    );
  }
}
