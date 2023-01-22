import 'package:air_quality/core/data/error_reporter/error_reporter.dart';
import 'package:air_quality/core/data/networking/network_manager.dart';
import 'package:air_quality/dependencies.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void setup() {
  sl
    ..registerLazySingleton(() {
      final dio = Dio(BaseOptions(baseUrl: 'https://api.gios.gov.pl/pjp-api/rest/'));
      if (kDebugMode) {
        dio.interceptors.add(PrettyDioLogger());
      }
      return dio;
    })
    ..registerLazySingleton(() => ErrorReporter())
    ..registerLazySingleton(() => NetworkManager(sl(), errorReporter: sl()));
}
