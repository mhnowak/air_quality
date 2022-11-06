import 'package:air_quality/core/domain/exceptions/aq_exception.dart';

class UnknownException extends AQException {
  const UnknownException([this.exception]);

  final Object? exception;

  @override
  List<Object?> get props => [exception];
}
