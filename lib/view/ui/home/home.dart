import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../../core/config/const.dart';
import '../../../core/config/style.dart';
import '../../bloc/init/init_cubit.dart';
import '../../widget/theme_loader_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void didChangeDependencies() async {
    await Future.wait([
      precacheImage(const AssetImage(day), context),
      precacheImage(const AssetImage(night), context),
      precacheImage(const AssetImage(pagi), context),
      precacheImage(const AssetImage(petang), context)
    ]);

    FlutterNativeSplash.remove();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final config = context.read<InitCubit>().state.init.config;
    final themeIsLight = (config.theme.name == 'light');
    final bgImage = themeIsLight ? day : night;
    final theme = Theme.of(context);
    final media = MediaQuery.of(context);

    void dzikirPage(String id) {
      Navigator.of(context).pushNamed(dzikir, arguments: id);
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [ThemeLoaderButton()],
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgImage),
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),
        ),
        child: Center(
          child: Card(
            color: theme.colorScheme.surface,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              width: media.size.width / 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    onTap: () {
                      dzikirPage('dzikir-pagi');
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    leading: Image.asset(pagi, height: 35),
                    minLeadingWidth: 0,
                    title: Text(
                      'Dzikir Pagi',
                      style: TextStyle(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                        fontSize: medium,
                      ),
                    ),
                  ),
                  Divider(color: theme.colorScheme.onSurfaceVariant, height: 0),
                  ListTile(
                    onTap: () {
                      dzikirPage('dzikir-petang');
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    leading: Image.asset(petang, height: 28),
                    minLeadingWidth: 35,
                    title: Text(
                      'Dzikir Petang',
                      style: TextStyle(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                        fontSize: medium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
