import 'package:AppLauncher/modules/favorites/state.dart';
import 'package:AppLauncher/repositories/application_provider.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/widgets.dart';
import 'package:maestro/maestro.dart';

class FavoritesComposer with Composer {
  FavoritesComposer({
    @required this.applicationProvider,
  });

  final ApplicationProvider applicationProvider;

  @override
  Future<void> play() => fetch();

  Future<void> fetch() async {
    final FavoritesState currentState = read<FavoritesState>();
    try {
      if (currentState is FavoritesStateInitial) {
        final applications = await _fetchApplications();
        write(FavoritesState.success(applications: applications));
      }
    } catch (_) {
      write(const FavoritesState.failure());
    }
  }

  Future<List<ApplicationWithIcon>> _fetchApplications() {
    try {
      return applicationProvider.loadApps();
    } catch (e) {
      throw e;
    }
  }
}
