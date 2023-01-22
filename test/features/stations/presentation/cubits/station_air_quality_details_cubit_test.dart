import 'package:air_quality/core/domain/exceptions/invalid_response_data_exception.dart';
import 'package:air_quality/core/domain/exceptions/unknown_exception.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/features/stations/domain/entities/air_quality_entity.dart';
import 'package:air_quality/features/stations/presentation/cubits/station_air_quality_details_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock.dart';
import '../../../t_stations_data.dart';

void main() {
  const tException = InvalidResponseDataException();
  final tUnknownException = Exception();
  final tAirQuality = tAirQualityEntity();

  late MockStationsRepository mockStationsRepository;
  late StationAirQualityDetailsCubit cubit;

  setUp(() {
    mockStationsRepository = MockStationsRepository();
    cubit = StationAirQualityDetailsCubit(mockStationsRepository);
  });

  test('State should be loaded when request is succesful', () async {
    when(() => mockStationsRepository.getStationAirQualityDetails(any())).thenAnswer((_) async => tAirQuality);

    await cubit.load(tStationId);

    expect(cubit.state, DataState.loaded(tAirQuality));
    verify(() => mockStationsRepository.getStationAirQualityDetails(tStationId)).called(1);
    verifyNoMoreInteractions(mockStationsRepository);
  });

  test('State should be exception with [AQException] when request is unsuccesful', () async {
    when(() => mockStationsRepository.getStationAirQualityDetails(any())).thenAnswer((_) async => throw tException);

    await cubit.load(tStationId);

    expect(cubit.state, const DataState<AirQualityEntity>.exception(tException));
    verify(() => mockStationsRepository.getStationAirQualityDetails(tStationId)).called(1);
    verifyNoMoreInteractions(mockStationsRepository);
  });

  test('State should be exception with [UnknownException] when something goes wrong', () async {
    when(() => mockStationsRepository.getStationAirQualityDetails(any()))
        .thenAnswer((_) async => throw tUnknownException);

    await cubit.load(tStationId);

    expect(cubit.state, DataState<AirQualityEntity>.exception(UnknownException(tUnknownException)));
    verify(() => mockStationsRepository.getStationAirQualityDetails(tStationId)).called(1);
    verifyNoMoreInteractions(mockStationsRepository);
  });
}
