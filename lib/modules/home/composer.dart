import 'package:AppLauncher/modules/home/state.dart';
import 'package:AppLauncher/repositories/application_provider.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/widgets.dart';
import 'package:maestro/maestro.dart';

class HomeComposer with Composer {
  HomeComposer({
    @required this.applicationProvider,
  });

  final ApplicationProvider applicationProvider;

  @override
  Future<void> play() => fetch();

  Future<void> fetch() async {
    final HomeState currentState = read<HomeState>();
    try {
      if (currentState is HomeStateInitial) {
        final applications = await _fetchApplications();
        write(HomeState.success(applications: applications));
      }
    } catch (_) {
      write(const HomeState.failure());
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
