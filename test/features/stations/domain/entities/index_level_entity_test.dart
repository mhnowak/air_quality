import 'package:air_quality/features/stations/domain/entities/index_level_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../t_stations_data.dart';

void main() {
  test('Should parse index level json to index level entity', () {
    final result = IndexLevelEntity.fromJson(tIndexLevelResponse);

    expect(result, tIndexLevelEntity());
  });

  test('Should parse index level entity to index level json', () {
    final result = tIndexLevelEntity().toJson();

    expect(result, tIndexLevelResponse);
  });
}
