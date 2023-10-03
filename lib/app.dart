import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sandbox/favorites/view/bloc/favorites_bloc.dart';
import 'package:sandbox/routing/routes.dart';
import 'package:sandbox/shared/di/di.dart';

import 'di/di.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late Future<bool> _dependencyInitFuture;
  late GoRouter router;
  late FavoritesBloc favBloc;

  @override
  void initState() {
    super.initState();
    _dependencyInitFuture = _configureDependencies();
    router = GoRouter(
      routes: routes,
      initialLocation: initialLocation,
      navigatorKey: rootNavigatorKey,
      errorBuilder: (context, state) {
        print('Router error builder invoked. Router state error: ${state.error}');

        return const SizedBox();
      },
    );
  }

  Future<bool> _configureDependencies() async {
    try {
      await configureDependencies();
      favBloc = get<FavoritesBloc>();
      return true;
    } catch (e) {
      print('Failed to configure dependencies: $e');
      return false;
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _dependencyInitFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data == true) {
          return BlocProvider.value(
            value: favBloc,
            child: MaterialApp.router(
              title: 'Simple News Client',
              routerConfig: router,
              theme: ThemeData(
                // This is the theme of your application.
                //
                // TRY THIS: Try running your application with "flutter run". You'll see
                // the application has a blue toolbar. Then, without quitting the app,
                // try changing the seedColor in the colorScheme below to Colors.green
                // and then invoke "hot reload" (save your changes or press the "hot
                // reload" button in a Flutter-supported IDE, or press "r" if you used
                // the command line to start the app).
                //
                // Notice that the counter didn't reset back to zero; the application
                // state is not lost during the reload. To reset the state, use hot
                // restart instead.
                //
                // This works for code too, not just values: Most code changes can be
                // tested with just a hot reload.
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
