import 'package:air_quality/core/domain/exceptions/aq_exception.dart';
import 'package:air_quality/core/domain/exceptions/invalid_response_data_exception.dart';
import 'package:air_quality/core/domain/exceptions/invalid_status_code_exception.dart';
import 'package:dio/dio.dart';

typedef FromJson<T> = T Function(dynamic json);

class NetworkManager {
  NetworkManager(this._dio);

  final Dio _dio;

  /// Returns parsed data from GET Request.
  ///
  /// Throws [InvalidResponseDataException] when response data doesn't match return type [R].
  /// Throws [InvalidStatusCodeException] for any unhandable status code.
  Future<R> get<R, T>(
    String path, {
    required FromJson<T> fromJson,
  }) async {
    assert(R == T || R == List<T>, 'Invalid return type [R], return type [R] can only be [List<T>] or T itself.');
    final result = await _dio.get(path);

    _handleErrors(result);

    return _handleData<R, T>(result.data, fromJson: fromJson);
  }

  /// Throws [AQException] for any status code, but 200.
  ///
  /// Throws [InvalidStatusCodeException] for any unhandable status code.
  void _handleErrors(Response result) {
    final statusCode = result.statusCode;
    switch (statusCode) {
      case 200:
        break;
      default:
        throw InvalidStatusCodeException(result.statusCode, result.statusMessage);
    }
  }

  /// Handles data that matches return type [R].
  ///
  /// Throws [InvalidResponseDataException] when data doesn't match return type [R].
  R _handleData<R, T>(
    dynamic data, {
    required FromJson<T> fromJson,
  }) {
    if (data is List && R == List<T>) {
      return data.map(fromJson).toList(growable: false) as R;
    } else if (data is Map<String, dynamic> && R == T) {
      return fromJson(data) as R;
    }

    throw InvalidResponseDataException(data);
  }
}
