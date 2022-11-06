import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fakes.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return AlchemistConfig.runWithConfig(
    run: () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      registerFallbackValues();
      await loadFonts();
      return testMain();
    },
    config: const AlchemistConfig(),
  );
}
