import 'package:air_quality/core/presentation/theme/theme.dart';
import 'package:air_quality/generated/l10n.dart';
import 'package:alchemist/alchemist.dart' as alchemist;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:meta/meta.dart';
import 'package:recase/recase.dart';

const kMobileDeviceHeight = 812.0;
const kMobileDeviceWidth = 375.0;
const kTabletDeviceHeight = 1024.0;
const kTabletDeviceWidth = 1366.0;

@isTest
Future<void> goldenTest(
  String name, {
  required Widget Function() builder,
  alchemist.Interaction? whilePerforming,
  String? path,
  bool? skip,
  BoxConstraints constraints = const BoxConstraints(),
  double textScaleFactor = 1.0,
}) =>
    alchemist.goldenTest(
      name,
      fileName: name.snakeCase,
      skip: skip ?? false,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: builder(),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
      textScaleFactor: textScaleFactor,
      constraints: constraints,
      pumpBeforeTest: alchemist.precacheImages,
      whilePerforming: (tester) async {
        await whilePerforming?.call(tester);
        await tester.pumpAndSettle();
        return;
      },
    );

@isTest
Future<void> goldenPageTest(
  String name, {
  required Widget Function() builder,
  alchemist.Interaction? whilePerforming,
  String? path,
  bool? skip,
  double textScaleFactor = 1.0,
}) =>
    goldenTest(
      name,
      skip: skip ?? false,
      builder: () => _buildPageTestWidget(builder),
      textScaleFactor: textScaleFactor,
      constraints: const BoxConstraints(
        // +16 because it padding takes space.
        maxWidth: kMobileDeviceWidth + kTabletDeviceWidth + 16,
        maxHeight: kTabletDeviceHeight,
      ),
      whilePerforming: (tester) async {
        await whilePerforming?.call(tester);
        await tester.pumpAndSettle();
        return;
      },
    );

Widget _buildPageTestWidget(Widget Function() builder) {
  return Row(
    children: [
      Theme(
        data: lightTheme,
        child: SizedBox(
          height: kMobileDeviceHeight,
          width: kMobileDeviceWidth,
          child: builder(),
        ),
      ),
      Theme(
        data: darkTheme,
        child: SizedBox(
          height: kTabletDeviceHeight,
          width: kTabletDeviceWidth,
          child: builder(),
        ),
      ),
    ],
  );
}
