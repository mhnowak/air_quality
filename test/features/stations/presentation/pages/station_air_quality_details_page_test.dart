import 'package:air_quality/core/domain/exceptions/invalid_response_data_exception.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/dependencies.dart';
import 'package:air_quality/features/stations/presentation/cubits/station_air_quality_details_cubit.dart';
import 'package:air_quality/features/stations/presentation/pages/station_air_quality_details_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../golden_test_runner.dart';
import '../../../../mock.dart';
import '../../../t_stations_data.dart';

void main() {
  const tException = InvalidResponseDataException();
  final tAirQuality = tAirQualityEntity();

  late MockStationAirQualityDetailsCubit mockCubit;

  setUp(() {
    mockCubit = MockStationAirQualityDetailsCubit();
    when(() => mockCubit.load(any())).thenAnswer((_) async {});

    sl.registerFactory<StationAirQualityDetailsCubit>(() => mockCubit);
  });

  tearDown(sl.reset);

  goldenPageTest(
    'Station Air Quality Details Page - Loaded',
    onBuild: () => when(() => mockCubit.state).thenReturn(DataState.loaded(tAirQuality)),
    builder: () => const StationAirQualityDetailsPage(
      id: tStationId,
      stationName: tStationName,
    ),
  );

  goldenPageTest(
    'Station Air Quality Details Page - Error',
    onBuild: () => when(() => mockCubit.state).thenReturn(const DataState.exception(tException)),
    builder: () => const StationAirQualityDetailsPage(
      id: tStationId,
      stationName: tStationName,
    ),
  );
}
