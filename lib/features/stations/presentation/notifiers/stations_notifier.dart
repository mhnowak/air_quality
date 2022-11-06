import 'package:air_quality/core/domain/exceptions/aq_exception.dart';
import 'package:air_quality/core/domain/exceptions/unknown_exception.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/dependencies.dart';
import 'package:air_quality/features/stations/data/stations_repository.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stationsProvider =
    StateNotifierProvider.autoDispose<StateNotifier<DataState<List<StationEntity>>>, DataState<List<StationEntity>>>(
        (_) => StationsNotifier(kiwi<StationsRepository>()));

class StationsNotifier extends StateNotifier<DataState<List<StationEntity>>> {
  StationsNotifier(this._stationsRepository) : super(const DataState.loading()) {
    load();
  }

  final StationsRepository _stationsRepository;

  Future<void> load() async {
    try {
      final stations = await _stationsRepository.getStations();
      state = DataState.loaded(stations);
    } on AQException catch (e) {
      state = DataState.exception(e);
    } catch (e) {
      state = DataState.exception(UnknownException(e));
    }
  }
}
