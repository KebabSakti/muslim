import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../controller/bookmark_controller.dart';
import '../../../controller/dzikir_controller.dart';
import '../../../core/config/const.dart';
import '../../../core/config/style.dart';
import '../../../model/bookmark/bookmark.dart';
import '../../../model/item/item.dart';
import '../../bloc/counter/counter_cubit.dart';
import '../../bloc/init/init_cubit.dart';
import '../../widget/counter.dart';
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

  final _audioPlayer = AudioPlayer();

  late int _activePage;
  late final CounterCubit _counterCubit;
  late final PageController _pageController;

  Future<void> _confirmDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Progress dzikir anda akan di reset, lanjutkan?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Tidak'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Ya'),
              onPressed: () {
                Navigator.of(context).pop();
                context.read<InitCubit>().delete(widget.dzikirId);
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _init() async {
    final initCubit = context.read<InitCubit>();
    final dzikir =
        _dzikirController.dzikir(widget.dzikirId, initCubit.state.init.dzikirs);
    final bookmark = _bookmarkController.bookmark(
        widget.dzikirId, initCubit.state.init.bookmarks);

    final index =
        dzikir.surah!.indexWhere((element) => element.id == bookmark.mark);

    _activePage = index;
    _counterCubit = CounterCubit(bookmark.item![_activePage].count!);
    _pageController = PageController(initialPage: _activePage);
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
    _audioPlayer.release();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocConsumer<InitCubit, InitState>(
      listener: (context, state) {
        if (state.reset) {
          Navigator.of(context)
              .popAndPushNamed(dzikir, arguments: widget.dzikirId);
        }
      },
      builder: (context, initState) {
        final dzikir =
            _dzikirController.dzikir(widget.dzikirId, initState.init.dzikirs);
        final bookmark = _bookmarkController.bookmark(
            widget.dzikirId, initState.init.bookmarks);

        void pageViewListener(int index) {
          _activePage = index;
          _counterCubit.setCount(bookmark.item![index].count!);
        }

        void langToggleListener(String lang) {
          context
              .read<InitCubit>()
              .setConfig(initState.init.config.copyWith(lang: lang));
        }

        Future counterListener(int count) async {
          final surah = dzikir.surah![_activePage];
          final item = bookmark.item![_activePage];

          final updatedBookmark = Bookmark(
              id: widget.dzikirId,
              mark: surah.id,
              item: List<Item>.from(bookmark.item!.map((e) {
                if (e.id == item.id) {
                  return item.copyWith(count: count);
                }

                return e;
              })));

          context.read<InitCubit>().setBookmark(updatedBookmark);

          AssetSource source = AssetSource(click);

          if (surah.count == count) {
            source = AssetSource(like);
          }

          await Future.wait([_audioPlayer.stop(), _audioPlayer.play(source)]);
        }

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
            iconTheme: IconThemeData(color: theme.colorScheme.onSurface),
            centerTitle: true,
            backgroundColor: theme.colorScheme.surface,
            elevation: 0.5,
            actions: [
              IconButton(
                onPressed: () {
                  _confirmDialog();
                },
                icon: Icon(
                  Icons.refresh_rounded,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              const ThemeLoaderButton(),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: large),
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: pageViewListener,
                      children: List<SurahView>.from(
                        dzikir.surah!.map(
                          (e) => SurahView(
                              lang: initState.init.config.lang, surah: e),
                        ),
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
                      langToggleListener(lang);
                    },
                  ),
                  Counter(
                    bloc: _counterCubit,
                    listener: (context, counterState) async {
                      counterListener(counterState.count);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
