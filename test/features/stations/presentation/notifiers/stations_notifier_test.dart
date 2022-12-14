import 'package:air_quality/core/domain/exceptions/invalid_response_data_exception.dart';
import 'package:air_quality/core/domain/exceptions/unknown_exception.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';
import 'package:air_quality/features/stations/presentation/notifiers/stations_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock.dart';
import '../../../t_stations_data.dart';

void main() {
  const tException = InvalidResponseDataException();
  final tUnknownException = Exception();
  final tStations = [tStationEntity()];

  late MockStationsRepository mockStationsRepository;
  late StationsNotifier notifier;

  setUp(() {
    mockStationsRepository = MockStationsRepository();
  });

  void setUpNotifier() {
    notifier = StationsNotifier(mockStationsRepository);
  }

  test('State should be loaded when request is succesful', () async {
    when(() => mockStationsRepository.getStations()).thenAnswer((_) async => tStations);
    setUpNotifier();

    await pumpEventQueue();

    expect(notifier.debugState, DataState.loaded(tStations));
    verify(() => mockStationsRepository.getStations()).called(1);
    verifyNoMoreInteractions(mockStationsRepository);
  });

  test('State should be exception with [AQException] when request is unsuccesful', () async {
    when(() => mockStationsRepository.getStations()).thenAnswer((_) async => throw tException);
    setUpNotifier();

    await pumpEventQueue();

    expect(notifier.debugState, const DataState<List<StationEntity>>.exception(tException));
    verify(() => mockStationsRepository.getStations()).called(1);
    verifyNoMoreInteractions(mockStationsRepository);
  });

  test('State should be exception with [UnknownException] when something goes wrong', () async {
    when(() => mockStationsRepository.getStations()).thenAnswer((_) async => throw tUnknownException);
    setUpNotifier();

    await pumpEventQueue();

    expect(notifier.debugState, DataState<List<StationEntity>>.exception(UnknownException(tUnknownException)));
    verify(() => mockStationsRepository.getStations()).called(1);
    verifyNoMoreInteractions(mockStationsRepository);
  });
}
