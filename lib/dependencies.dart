import 'package:air_quality/core/dependencies.dart' as core;
import 'package:air_quality/features/stations/dependencies.dart' as stations;
import 'package:get_it/get_it.dart';

final sl = GetIt.asNewInstance();

void setup() {
  core.setup();
  stations.setup();
}
