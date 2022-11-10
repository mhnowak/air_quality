import 'package:air_quality/core/data/error_reporter/error_reporter.dart';
import 'package:air_quality/core/data/networking/network_manager.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioProvider = Provider((ref) {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.gios.gov.pl/pjp-api/rest/'));
  if (kDebugMode) {
    dio.interceptors.add(PrettyDioLogger());
  }
  return dio;
});

final errorReporterProvider = Provider((ref) => ErrorReporter());

final networkManagerProvider = Provider(
  (ref) => NetworkManager(ref.watch(dioProvider), errorReporter: ref.watch(errorReporterProvider)),
);
