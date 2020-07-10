import 'dart:async';
import 'package:device_apps/device_apps.dart';

class ApplicationProvider {
  Future<List<ApplicationWithIcon>> loadApps({
    bool onlyAppsWithLaunchIntent = true,
    bool includeSystemApps = false,
    bool includeAppIcons = true,
  }) async {
    final applications = await DeviceApps.getInstalledApplications(
      onlyAppsWithLaunchIntent: onlyAppsWithLaunchIntent,
      includeSystemApps: includeSystemApps,
      includeAppIcons: includeAppIcons,
    );

    List<ApplicationWithIcon> applicationsWithIcon = [];
    for (var app in applications) {
      applicationsWithIcon.add(
        await DeviceApps.getApp(app.packageName, includeAppIcons),
      );
    }
    return applicationsWithIcon;
  }

  Future<bool> launch(ApplicationWithIcon app) {
    return DeviceApps.openApp(app?.packageName);
  }
}
