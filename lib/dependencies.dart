import 'package:air_quality/core/data/network_manager.dart';
import 'package:air_quality/features/stations/dependencies.dart' as stations;
import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';

final kiwi = KiwiContainer();

void setup() {
  kiwi
    ..registerSingleton(
      (container) => Dio(
        BaseOptions(
          baseUrl: 'https://api.gios.gov.pl/pjp-api/rest/',
        ),
      ),
    )
    ..registerSingleton((container) => NetworkManager(container<Dio>()));

  stations.setup();
}
