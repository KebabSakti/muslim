import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../controller/bookmark_controller_other.dart';
import '../../../controller/dzikir_controller_other.dart';
import '../../../core/config/style.dart';
import '../../../model/bookmark/bookmark.dart';
import '../../../model/item/item.dart';
import '../../bloc/counter/counter_cubit.dart';
import '../../bloc/init/init_cubit.dart';
import '../../widget/surah_view.dart';
import '../../widget/theme_loader_button.dart';

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
  final _dzikirController = GetIt.I<DzikirController>();
  final _bookmarkController = GetIt.I<BookmarkController>();

  int _activePage = 0;

  late final CounterCubit _counterCubit;
  late final PageController _pageController;

  void _init() {
    final initCubit = context.read<InitCubit>();
    final dzikir =
        _dzikirController.dzikir(widget.dzikirId, initCubit.state.init.dzikirs);
    final bookmark = _bookmarkController.bookmark(
        widget.dzikirId, initCubit.state.init.bookmarks);
    final surahIndex =
        dzikir.surah!.indexWhere((element) => element.id == bookmark.mark);
    final itemIndex =
        bookmark.item!.indexWhere((element) => element.id == bookmark.mark);

    _counterCubit = CounterCubit(bookmark.item![itemIndex].count!);
    _pageController = PageController(initialPage: surahIndex);

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

    return BlocConsumer<InitCubit, InitState>(
      listener: (context, initState) {
        // log(initState.init.config.toString());
      },
      builder: (context, initState) {
        final dzikir =
            _dzikirController.dzikir(widget.dzikirId, initState.init.dzikirs);
        final bookmark = _bookmarkController.bookmark(
            widget.dzikirId, initState.init.bookmarks);

        return Scaffold(
          appBar: AppBar(
            title: Text(
              dzikir.name!,
              style: TextStyle(
                color: theme.colorScheme.onSurface,
                fontSize: medium1x,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
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
                      _activePage = index;

                      _counterCubit.setCount(bookmark.item![index].count!);
                    },
                    children: List<SurahView>.from(
                      dzikir.surah!.map((e) => SurahView(
                          lang: initState.init.config.lang, surah: e)),
                    ),
                  ),
                ),
                const SizedBox(height: medium),
                ToggleSwitch(
                  initialLabelIndex:
                      initState.init.config.lang == 'arabic' ? 0 : 1,
                  totalSwitches: 2,
                  labels: const ['Arabic', 'Latin'],
                  activeBgColor: [theme.colorScheme.primary],
                  inactiveBgColor: theme.colorScheme.background,
                  cornerRadius: 100,
                  onToggle: (index) {
                    final lang = index == 0 ? 'arabic' : 'latin';

                    context
                        .read<InitCubit>()
                        .setConfig(initState.init.config.copyWith(lang: lang));
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
                      listener: (context, counterState) {
                        final id = dzikir.surah![_activePage].id!;

                        final item =
                            _bookmarkController.item(id, bookmark.item!);

                        final updatedBookmark = Bookmark(
                            id: widget.dzikirId,
                            mark: id,
                            item: List<Item>.from(bookmark.item!.map((e) {
                              if (e.id == item.id) {
                                return item.copyWith(count: counterState.count);
                              }

                              return e;
                            })));

                        context.read<InitCubit>().setBookmark(updatedBookmark);
                      },
                      builder: (context, counterState) {
                        return Text(
                          '${counterState.count}',
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
      },
    );
  }
}
