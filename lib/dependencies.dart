import 'package:air_quality/core/data/error_reporter/error_reporter.dart';
import 'package:air_quality/core/data/networking/network_manager.dart';
import 'package:air_quality/features/stations/dependencies.dart' as stations;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:kiwi/kiwi.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final kiwi = KiwiContainer();

void setup() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.gios.gov.pl/pjp-api/rest/'));
  if (kDebugMode) {
    dio.interceptors.add(PrettyDioLogger());
  }

  kiwi
    ..registerSingleton((container) => ErrorReporter())
    ..registerSingleton((container) => dio)
    ..registerSingleton((container) => NetworkManager(container(), errorReporter: kiwi()));

  stations.setup();
}
