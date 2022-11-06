import 'package:air_quality/features/stations/domain/entities/city_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../t_stations_data.dart';

void main() {
  test('Should parse city json to city entity', () {
    final result = CityEntity.fromJson(tCityResponse);

    expect(result, tCityEntity());
  });

  test('Should parse city entity to city json', () {
    final result = tCityEntity().toJson();

    expect(result, tCityResponse);
  });
}
