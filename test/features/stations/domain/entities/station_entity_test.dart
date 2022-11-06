import 'package:air_quality/features/stations/domain/entities/station_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../t_stations_data.dart';

void main() {
  test('Should parse station json to station entity', () {
    final result = StationEntity.fromJson(tStationResponse);

    expect(result, tStationEntity());
  });

  test('Should parse Station entity to Station json', () {
    final result = tStationEntity().toJson();

    expect(result, tStationResponse);
  });
}
