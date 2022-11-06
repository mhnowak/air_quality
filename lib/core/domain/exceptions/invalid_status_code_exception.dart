import 'package:air_quality/core/domain/exceptions/aq_exception.dart';

class InvalidStatusCodeException extends AQException {
  const InvalidStatusCodeException(this.statusCode, this.statusMessage);

  final int? statusCode;
  final String? statusMessage;
}
