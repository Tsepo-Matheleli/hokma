// @dart=2.17

import 'dart:ui' as ui;

import 'package:hokma/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
