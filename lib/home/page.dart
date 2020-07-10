import 'package:AppLauncher/core/widgets/infinite_list.dart';
import 'package:AppLauncher/home/composer.dart';
import 'package:AppLauncher/home/state.dart';
import 'package:AppLauncher/models/post.dart';
import 'package:flutter/material.dart';
import 'package:maestro/maestro.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Maestros(
      [
        const Maestro(HomeState.initial()),
        Maestro(HomeComposer()),
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
    final HomeState currentState = context.listen<HomeState>();
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
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _Success extends StatelessWidget {
  const _Success({Key key, this.state}) : super(key: key);

  final HomeStateSuccess state;

  @override
  Widget build(BuildContext context) {
    if (state.posts.isEmpty) {
      return Center(
        child: Text('no posts'),
      );
    } else {
      return InfiniteListView(
        onFetch: () => context.read<HomeComposer>().fetch(),
        itemCount: state.posts.length,
        itemBuilder: (context, index) {
          return Text(state.posts[index].title);
        },
        hasReachedEnd: state.hasReachedMax,
      );
    }
  }
}

class _Failure extends StatelessWidget {
  const _Failure({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('failed to fetch posts'),
    );
  }
}
