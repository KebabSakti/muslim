import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../core/config/style.dart';
import '../../bloc/counter/counter_cubit.dart';
import '../../bloc/dzikir/dzikir_cubit.dart';
import '../../widget/surah_view.dart';

class Dzikir extends StatefulWidget {
  const Dzikir({
    super.key,
    required this.dzikirId,
  });

  final String dzikirId;

  @override
  State<Dzikir> createState() => _DzikirState();
}

class _DzikirState extends State<Dzikir> {
  final _dzikirCubit = DzikirCubit();
  final _counterCubit = CounterCubit(0);
  final _pageController = PageController();

  void _init() {
    FlutterNativeSplash.remove();

    _dzikirCubit.show(widget.dzikirId);
  }

  @override
  void initState() {
    _init();

    super.initState();
  }

  @override
  void dispose() {
    _dzikirCubit.close();
    _counterCubit.close();
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        elevation: 0.5,
        // actions: const [ThemeLoaderButton()],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<DzikirCubit, DzikirState>(
                bloc: _dzikirCubit,
                builder: (context, state) {
                  if (state.dzikir == null) {
                    return const SizedBox.shrink();
                  }

                  return PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      //
                    },
                    children: List<SurahView>.from(
                      state.dzikir!.surah!.map((e) => SurahView(surah: e)),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: medium),
            ToggleSwitch(
              initialLabelIndex: 0,
              totalSwitches: 2,
              labels: const ['Arabic', 'Latin'],
              activeBgColor: [theme.colorScheme.primary],
              inactiveBgColor: theme.colorScheme.background,
              cornerRadius: 100,
              onToggle: (index) {
                // log(index.toString());
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  color: Colors.transparent,
                  child: Ink(
                    height: 100,
                    width: 100,
                    child: InkWell(
                      onTap: () {
                        //
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
                  bloc: _counterCubit,
                  listener: (context, state) {
                    //
                  },
                  builder: (context, state) {
                    return Text(
                      '${state.count}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.onSurface,
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
                        //
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
            ),
          ],
        ),
      ),
    );
  }
}
