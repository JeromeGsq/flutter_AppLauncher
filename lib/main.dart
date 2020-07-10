import 'package:AppLauncher/repositories/application_provider.dart';
import 'package:flutter/material.dart';
import 'package:AppLauncher/modules/home/page.dart';
import 'package:maestro/maestro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Maestros(
      [
        MaestroInspector(_logAction),
        Maestro(ApplicationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomePage(),
      ),
    );
  }

  bool _logAction<T>(T oldValue, T newValue, Object action) {
    final String description = action == null ? '' : '($action)';
    debugPrint('Maestro$description: $oldValue => $newValue');
    return true;
  }
}
