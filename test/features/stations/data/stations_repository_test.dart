import 'package:air_quality/features/stations/data/stations_repository.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mock.dart';
import '../../t_stations_data.dart';

void main() {
  late MockNetworkManager mockNetworkManager;
  late StationsRepository repo;

  setUp(() {
    mockNetworkManager = MockNetworkManager();
    repo = StationsRepository(mockNetworkManager);
  });

  test('Get Stations - When request is successful and data contains response answer with list of stations', () async {
    final tStations = [tStationEntity()];
    when(() => mockNetworkManager.get<List<StationEntity>, StationEntity>(any(), fromJson: any(named: 'fromJson')))
        .thenAnswer((_) async => tStations);

    final result = await repo.getStations();

    expect(result, tStations);
    verify(() => mockNetworkManager.get<List<StationEntity>, StationEntity>('station/findAll',
        fromJson: any(named: 'fromJson'))).called(1);
    verifyNoMoreInteractions(mockNetworkManager);
  });
}
