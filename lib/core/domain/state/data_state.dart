import 'package:air_quality/core/domain/exceptions/aq_exception.dart';
import 'package:equatable/equatable.dart';

abstract class DataState<T> extends Equatable {
  const DataState();

  const factory DataState.loading() = _LoadingDataState;
  const factory DataState.loaded(T data) = _LoadedDataState<T>;
  const factory DataState.exception(AQException e) = _ExceptionDataState;

  @override
  List<Object?> get props => [];
}

class _LoadingDataState<T> extends DataState<T> {
  const _LoadingDataState();
}

class _LoadedDataState<T> extends DataState<T> {
  const _LoadedDataState(this.data);

  final T data;

  @override
  List<Object?> get props => [data];
}

class _ExceptionDataState<T> extends DataState<T> {
  const _ExceptionDataState(this.exception);

  final AQException exception;

  @override
  List<Object?> get props => [exception];
}
