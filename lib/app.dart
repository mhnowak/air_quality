import 'package:air_quality/features/stations/presentation/stations_page.dart';
import 'package:flutter/material.dart';

class AirQualityApp extends StatelessWidget {
  const AirQualityApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StationsPage(),
    );
  }
}
