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

  void setup([Future<List<StationEntity>>? result]) {
    mockStationsRepository = MockStationsRepository();
    when(() => mockStationsRepository.getStations()).thenAnswer((_) => result ?? Future.value(tStations));

    notifier = StationsNotifier(mockStationsRepository);
  }

  test('State should be loaded when request is succesful', () async {
    setup();

    await pumpEventQueue();

    expect(notifier.debugState, DataState.loaded(tStations));
    verify(() => mockStationsRepository.getStations()).called(1);
    verifyNoMoreInteractions(mockStationsRepository);
  });

  test('State should be exception with [AQException] when request is unsuccesful', () async {
    setup(Future.error(tException));

    await pumpEventQueue();

    expect(notifier.debugState, const DataState<List<StationEntity>>.exception(tException));
    verify(() => mockStationsRepository.getStations()).called(1);
    verifyNoMoreInteractions(mockStationsRepository);
  });

  test('State should be exception with [UnknownException] when something goes wrong', () async {
    setup(Future.error(tUnknownException));

    await pumpEventQueue();

    expect(notifier.debugState, DataState<List<StationEntity>>.exception(UnknownException(tUnknownException)));
    verify(() => mockStationsRepository.getStations()).called(1);
    verifyNoMoreInteractions(mockStationsRepository);
  });
}
