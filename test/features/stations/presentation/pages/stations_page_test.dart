import 'package:air_quality/core/domain/exceptions/invalid_response_data_exception.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/dependencies.dart';
import 'package:air_quality/features/stations/presentation/cubits/stations_cubit.dart';
import 'package:air_quality/features/stations/presentation/pages/stations_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

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

  late MockStationsCubit mockStationsCubit;

  setUp(() {
    mockStationsCubit = MockStationsCubit();
    sl.registerFactory<StationsCubit>(() => mockStationsCubit);
  });

  tearDown(sl.reset);

  goldenPageTest(
    'Stations Page - Loaded',
    onBuild: () => when(() => mockStationsCubit.state).thenReturn(DataState.loaded(tStations)),
    builder: () => const StationsPage(),
  );

  goldenPageTest(
    'Stations Page - Error',
    onBuild: () => when(() => mockStationsCubit.state).thenReturn(const DataState.exception(tException)),
    builder: () => const StationsPage(),
  );
}
