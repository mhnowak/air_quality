import 'package:air_quality/core/domain/exceptions/aq_exception.dart';
import 'package:air_quality/core/domain/exceptions/unknown_exception.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/features/stations/data/stations_repository.dart';
import 'package:air_quality/features/stations/domain/entities/air_quality_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StationAirQualityDetailsCubit extends Cubit<DataState<AirQualityEntity>> {
  StationAirQualityDetailsCubit(this._stationsRepository) : super(const DataState.loading());

  final StationsRepository _stationsRepository;

  Future<void> load(int id) async {
    try {
      final result = await _stationsRepository.getStationAirQualityDetails(id);
      emit(DataState.loaded(result));
    } on AQException catch (e) {
      emit(DataState.exception(e));
    } catch (e) {
      emit(DataState.exception(UnknownException(e)));
    }
  }
}
