import 'package:air_quality/core/domain/exceptions/aq_exception.dart';
import 'package:air_quality/core/domain/exceptions/unknown_exception.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/features/stations/data/stations_repository.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StationsCubit extends Cubit<DataState<List<StationEntity>>> {
  StationsCubit(this._stationsRepository) : super(const DataState.loading()) {
    load();
  }

  final StationsRepository _stationsRepository;

  Future<void> load() async {
    try {
      final stations = await _stationsRepository.getStations();
      emit(DataState.loaded(stations));
    } on AQException catch (e) {
      emit(DataState.exception(e));
    } catch (e) {
      emit(DataState.exception(UnknownException(e)));
    }
  }
}
