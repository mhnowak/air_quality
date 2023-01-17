import 'package:air_quality/features/stations/domain/entities/air_quality_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../t_stations_data.dart';

void main() {
  group('Data - ', () {
    test('Should parse air quality json to air quality entity', () {
      final result = AirQualityEntity.fromJson(tAirQualityIndexResponse);

      expect(result, tAirQualityEntity());
    });

    test('Should parse air quality entity to air quality json', () {
      final result = tAirQualityEntity().toJson();

      expect(result, tAirQualityIndexResponse);
    });
  });

  group('Null Data - ', () {
    const tAirQuality = AirQualityEntity(id: null);
    test('Should parse air quality json to air quality entity', () {
      final result = AirQualityEntity.fromJson(tAirQualityIndexResponseNull);

      expect(result, tAirQuality);
    });

    test('Should parse air quality entity to air quality json', () {
      final result = tAirQuality.toJson();

      expect(result, tAirQualityIndexResponseNull);
    });
  });
}
