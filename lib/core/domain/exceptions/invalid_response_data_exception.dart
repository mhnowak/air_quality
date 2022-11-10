import 'package:air_quality/core/domain/exceptions/aq_exception.dart';
import 'package:dio/dio.dart';

/// Thrown when [data] from [Response] doesn't match the expected type.
class InvalidResponseDataException extends AQException {
  const InvalidResponseDataException([this.data]);

  final dynamic data;

  // TODO: AQ-9 Get localized error message.

  @override
  List<Object?> get props => [data];
}
