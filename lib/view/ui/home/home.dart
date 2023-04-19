import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../controller/bookmark_controller.dart';
import '../../../core/config/style.dart';
import '../../../core/helper/utility.dart';
import '../../../model/dzikir/dzikir.dart';
import '../../bloc/counter/counter_cubit.dart';
import '../../widget/theme_loader_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _counterCubit = CounterCubit(0);

  final _bookmark = BookmarkController();

  Future _init() async {
    final data = await DefaultAssetBundle.of(context)
        .loadString("asset/data/dzikir.json");

    final parsed = await compute(parseJson, data);
    final pagi = parsed.firstWhere((e) => e['id'] == 'dzikir-pagi');
    final results = Dzikir.fromJson(pagi);

    final bookmark = await _bookmark.load();

    log(bookmark.toString());

    FlutterNativeSplash.remove();
  }

  @override
  void initState() {
    _init();

    super.initState();
  }

  @override
  void dispose() {
    _counterCubit.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        elevation: 0.5,
        actions: const [ThemeLoaderButton()],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: medium, right: medium, top: medium),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Surah ke 1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    '(Baca 1 kali)',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: theme.colorScheme.onSurface),
                  ),
                ],
              ),
            ),
            const SizedBox(height: medium),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: medium),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Text(
                      'اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ، لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ، لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ، مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ، يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ، وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ، وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ، وَلَا يَئُودُهُ حِفْظُهُمَا، وَهُوَ الْعَلِيُّ الْعَظِيمُ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: large3x,
                        fontFamily: 'Arabic',
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
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
                        _counterCubit.decrement();
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
                BlocBuilder<CounterCubit, CounterState>(
                  bloc: _counterCubit,
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
                        _counterCubit.increment();
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
