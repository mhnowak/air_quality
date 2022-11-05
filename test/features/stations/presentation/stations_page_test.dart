import 'package:air_quality/features/stations/presentation/stations_page.dart';

import '../../../golden_test_runner.dart';

void main() {
  goldenPageTest(
    'Stations Page',
    builder: () => const StationsPage(),
  );
}
