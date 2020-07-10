import 'package:AppLauncher/modules/favorites/composer.dart';
import 'package:AppLauncher/modules/favorites/state.dart';
import 'package:AppLauncher/repositories/application_provider.dart';
import 'package:flutter/material.dart';
import 'package:maestro/maestro.dart';
import 'package:flutter/services.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Maestros(
      [
        const Maestro(FavoritesState.initial()),
        Maestro(
          FavoritesComposer(
            applicationProvider: context.read<ApplicationProvider>(),
          ),
        ),
      ],
      child: Scaffold(
        body: const _Page(),
      ),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    final FavoritesState currentState = context.listen<FavoritesState>();
    return currentState.map(
      initial: (s) => const _Initial(),
      failure: (s) => const _Failure(),
      success: (s) => _Success(state: s),
    );
  }
}

class _Initial extends StatelessWidget {
  const _Initial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _Success extends StatelessWidget {
  const _Success({Key key, this.state}) : super(key: key);

  final FavoritesStateSuccess state;

  @override
  Widget build(BuildContext context) {
    final appProvider = context.read<ApplicationProvider>();

    return Container();
  }
}

class _Failure extends StatelessWidget {
  const _Failure({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('No applications available'),
    );
  }
}
