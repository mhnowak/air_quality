import 'package:air_quality/core/data/networking/network_manager.dart';
import 'package:air_quality/features/stations/domain/entities/air_quality_entity.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';

class StationsRepository {
  StationsRepository(this._networkManager);

  final NetworkManager _networkManager;

  /// Returns available measuring stations.
  Future<List<StationEntity>> getStations() => _networkManager
      .get<List<StationEntity>, StationEntity>('station/findAll', fromJson: (json) => StationEntity.fromJson(json));

  Future<AirQualityEntity> getStationAirQualityDetails(int id) =>
      _networkManager.get<AirQualityEntity, AirQualityEntity>('aqindex/getIndex/$id',
          fromJson: (json) => AirQualityEntity.fromJson(json));
}
