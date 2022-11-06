import 'package:air_quality/features/stations/domain/entities/commune_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../t_stations_data.dart';

void main() {
  test('Should parse commune json to commune entity', () {
    final result = CommuneEntity.fromJson(tCommuneResponse);

    expect(result, tCommuneEntity());
  });

  test('Should parse commune entity to commune json', () {
    final result = tCommuneEntity().toJson();

    expect(result, tCommuneResponse);
  });
}
