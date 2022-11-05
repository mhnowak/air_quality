import 'package:air_quality/core/presentation/theme/theme.dart';
import 'package:air_quality/features/stations/presentation/stations_page.dart';
import 'package:flutter/material.dart';

class AQApp extends StatelessWidget {
  const AQApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const StationsPage(),
    );
  }
}
