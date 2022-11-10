import 'package:air_quality/core/data/error_reporter/error_reporter.dart';
import 'package:air_quality/core/data/networking/network_manager.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/features/stations/data/stations_repository.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';

abstract class MockStateNotifier<T> extends StateNotifier<T> {
  MockStateNotifier(super.state);

  void updateState(T state) {
    this.state = state;
  }
}

class MockDio extends Mock implements Dio {}

class MockErrorReporter extends Mock implements ErrorReporter {}

class MockNetworkManager extends Mock implements NetworkManager {}

class MockStationsRepository extends Mock implements StationsRepository {}

class MockStationsNotifier extends MockStateNotifier<DataState<List<StationEntity>>> {
  MockStationsNotifier() : super(const DataState.loading());
}
