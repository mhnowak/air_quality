import 'package:air_quality/core/data/network_manager.dart';
import 'package:air_quality/dependencies.dart';
import 'package:air_quality/features/stations/data/stations_repository.dart';

void setup() {
  kiwi.registerSingleton((container) => StationsRepository(container<NetworkManager>()));
}
