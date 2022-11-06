import 'package:equatable/equatable.dart';

/// Exceptions are thrown by code in written in this project.
///
/// An [AQException] is intended to convey information to the user about a failure,
/// so that the error can be addressed programmatically. It is intended to be
/// caught, and it should contain useful data fields.
///
/// Highly inspired on [Exception] with the idae to differentiate errors thrown by
/// the VM or Dart Code with intended errors throws from this project.
abstract class AQException extends Equatable {
  const AQException();

  @override
  List<Object?> get props => [];
}
