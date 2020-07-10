import 'package:AppLauncher/modules/home/composer.dart';
import 'package:AppLauncher/modules/home/state.dart';
import 'package:AppLauncher/repositories/application_provider.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:maestro/maestro.dart';
import 'package:flutter/services.dart';
import 'package:palette_generator/palette_generator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Maestros(
      [
        const Maestro(HomeState.initial()),
        Maestro(
          HomeComposer(
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
    //SystemChrome.setEnabledSystemUIOverlays([]);
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
    return Container();
  }
}

class _Success extends StatelessWidget {
  const _Success({Key key, this.state}) : super(key: key);

  final HomeStateSuccess state;

  @override
  Widget build(BuildContext context) {
    double _kRowSize = 120;
    double _kCellSize = 100;

    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: _kRowSize * 0.5),
            AppRow(kRowSize: _kRowSize, state: state, kCellSize: _kCellSize),
            SizedBox(height: _kRowSize * 0.10),
            AppRow(kRowSize: _kRowSize, state: state, kCellSize: _kCellSize),
            SizedBox(height: _kRowSize * 0.10),
            AppRow(kRowSize: _kRowSize, state: state, kCellSize: _kCellSize),
            SizedBox(height: _kRowSize * 0.25),
          ],
        ),
      ),
    );
  }
}

class AppRow extends StatelessWidget {
  const AppRow({
    Key key,
    @required double kRowSize,
    @required this.state,
    @required double kCellSize,
  })  : _kRowSize = kRowSize,
        _kCellSize = kCellSize,
        super(key: key);

  final double _kRowSize;
  final HomeStateSuccess state;
  final double _kCellSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _kRowSize,
      child: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: state.applications.length,
          itemBuilder: (context, index) {
            final app = state.applications[index];
            return AppButton(
              app: app,
              kCellSize: _kCellSize,
              focused: index % 4 == 0,
            );
          },
        ),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    Key key,
    this.focused = false,
    @required this.app,
    @required double kCellSize,
  })  : _kCellSize = kCellSize,
        super(key: key);

  final bool focused;
  final ApplicationWithIcon app;
  final double _kCellSize;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: PaletteGenerator.fromColors(
        [PaletteColor(Colors.white, 1)],
      ),
      future: _getImagePalette(MemoryImage(app.icon)),
      builder: (
        BuildContext context,
        AsyncSnapshot<PaletteGenerator> paletteGenerator,
      ) {
        final color = paletteGenerator.data.dominantColor.color;
        final appProvider = context.read<ApplicationProvider>();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                _kCellSize * 0.18,
              ),
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 10,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                _kCellSize * 0.18,
              ),
              child: Container(
                color: color,
                height: _kCellSize,
                width: focused ? _kCellSize * 2 : _kCellSize,
                child: Stack(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: focused
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      children: <Widget>[
                        Transform.scale(
                          scale: 0.8,
                          child: Image.memory(
                            app.icon,
                          ),
                        ),
                        if (focused)
                          Flexible(
                            child: Text(
                              app.appName,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                      ],
                    ),
                    FlatButton(
                      focusColor: Colors.transparent,
                      splashColor: Colors.white38,
                      onPressed: () => appProvider.launch(app),
                      child: SizedBox(
                        height: _kCellSize,
                        width: focused ? _kCellSize * 2 : _kCellSize,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
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

Future<PaletteGenerator> _getImagePalette(ImageProvider imageProvider) async {
  final paletteGenerator = await PaletteGenerator.fromImageProvider(
    imageProvider,
  );
  return paletteGenerator;
}
