import 'package:air_quality/core/data/networking/network_manager.dart';
import 'package:air_quality/dependencies.dart';
import 'package:air_quality/features/stations/data/stations_repository.dart';
import 'package:air_quality/features/stations/presentation/notifiers/stations_notifier.dart';

void setup() {
  kiwi
    ..registerSingleton((container) => StationsRepository(container<NetworkManager>()))
    ..registerFactory((container) => StationsNotifier(container<StationsRepository>()));
}
