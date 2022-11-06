import 'package:air_quality/core/data/network_manager.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';

class StationsRepository {
  StationsRepository(this._networkManager);

  final NetworkManager _networkManager;

  /// Returns available measuring stations.
  Future<List<StationEntity>> getStations() => _networkManager
      .get<List<StationEntity>, StationEntity>('station/findAll', fromJson: (json) => StationEntity.fromJson(json));
}
