import 'package:air_quality/core/domain/exceptions/invalid_response_data_exception.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/features/stations/presentation/notifiers/stations_notifier.dart';
import 'package:air_quality/features/stations/presentation/pages/stations_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../golden_test_runner.dart';
import '../../../../mock.dart';
import '../../../t_stations_data.dart';

void main() {
  const tException = InvalidResponseDataException();
  final tStations = [
    tStationEntity(),
    tStationEntity(stationName: 'Jasna Gora, Measuring station with a very long name'),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
    tStationEntity(),
  ];

  late MockStationsNotifier mockStationsNotifier;

  setUp(() {
    mockStationsNotifier = MockStationsNotifier();
  });

  goldenPageTest(
    'Stations Page - Loaded',
    overrides: [
      stationsProvider.overrideWith((ref) => mockStationsNotifier),
    ],
    onBuild: () => mockStationsNotifier.updateState(DataState.loaded(tStations)),
    builder: () => const StationsPage(),
  );

  goldenPageTest(
    'Stations Page - Error',
    overrides: [
      stationsProvider.overrideWith((ref) => mockStationsNotifier),
    ],
    onBuild: () => mockStationsNotifier.updateState(const DataState.exception(tException)),
    builder: () => const StationsPage(),
  );
}
