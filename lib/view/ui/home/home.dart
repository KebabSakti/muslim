import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../controller/bookmark_controller.dart';
import '../../../controller/dzikir_controller.dart';
import '../../../core/config/style.dart';
import '../../../model/bookmark/bookmark.dart';
import '../../../model/dzikir/dzikir.dart';
import '../../../model/item/item.dart';
import '../../../model/surah/surah.dart';
import '../../bloc/counter/counter_cubit.dart';
import '../../bloc/init/init_cubit.dart';
import '../../widget/surah_view.dart';
import '../../widget/theme_loader_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _dzikirController = DzikirController();
  final _bookmarkController = BookmarkController();

  late final CounterCubit _counterCubit;
  late final PageController _pageController;
  late final List<Dzikir> _dzikirs;
  late final Dzikir _dzikir;
  late final List<Surah> _surahs;
  late final List<Bookmark> _bookmarks;
  late final List<Item> _items;
  late final Bookmark _bookmark;

  void _onPageChanged(Surah surah) {
    final item = _bookmarkController.item(surah.id!, _bookmark);
    _counterCubit.setCount(item.count!);
  }

  Future _init() async {
    final init = context.read<InitCubit>().state.init;

    _dzikirs = init.dzikirs;
    _bookmarks = init.bookmarks;
    _dzikir = _dzikirController.dzikir('dzikir-pagi', _dzikirs);
    _bookmark = _bookmarkController.bookmark('dzikir-pagi', _bookmarks);

    _surahs = _dzikir.surah!;
    _items = _bookmark.item!;

    final surahIndex =
        _surahs.indexWhere((element) => element.id == _bookmark.mark);
    final itemIndex =
        _items.indexWhere((element) => element.id == _bookmark.mark);

    _pageController = PageController(initialPage: surahIndex);
    _counterCubit = CounterCubit(_items[itemIndex].count!);

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
        actions: const [ThemeLoaderButton()],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  _onPageChanged(_surahs[index]);
                },
                children: List<SurahView>.from(
                  _surahs.map((e) => SurahView(
                        lang: 'latins',
                        surah: e,
                      )),
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
                BlocConsumer<CounterCubit, CounterState>(
                  bloc: _counterCubit,
                  listener: (context, state) {
                    final surahIndex = _surahs
                        .indexWhere((element) => element.id == _bookmark.mark);

                    _bookmarkController.update(
                        Item(id: _items[surahIndex].id, count: state.count),
                        _bookmark,
                        _bookmarks);
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
