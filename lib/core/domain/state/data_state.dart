import 'package:air_quality/core/domain/exceptions/aq_exception.dart';
import 'package:equatable/equatable.dart';

abstract class DataState<T> extends Equatable {
  const DataState();

  const factory DataState.loading() = LoadingState;
  const factory DataState.loaded(T data) = LoadedState<T>;
  const factory DataState.exception(AQException e) = ExceptionState;

  @override
  List<Object?> get props => [];
}

class LoadingState<T> extends DataState<T> {
  const LoadingState();
}

class LoadedState<T> extends DataState<T> {
  const LoadedState(this.data);

  final T data;

  @override
  List<Object?> get props => [data];
}

class ExceptionState<T> extends DataState<T> {
  const ExceptionState(this.exception);

  final AQException exception;

  @override
  List<Object?> get props => [exception];
}
