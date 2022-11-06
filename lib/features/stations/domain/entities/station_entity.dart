import 'package:air_quality/features/stations/domain/entities/city_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'station_entity.g.dart';

@JsonSerializable()
class StationEntity extends Equatable {
  const StationEntity({
    required this.id,
    required this.stationName,
    required this.gegrLat,
    required this.gegrLon,
    required this.addressStreet,
    required this.city,
  });

  factory StationEntity.fromJson(Map<String, dynamic> json) => _$StationEntityFromJson(json);

  final int id;
  final String stationName;
  final String gegrLat;
  final String gegrLon;
  final String? addressStreet;
  final CityEntity city;

  Map<String, dynamic> toJson() => _$StationEntityToJson(this);

  @override
  List<Object?> get props => [
        id,
        stationName,
        gegrLat,
        gegrLon,
        addressStreet,
        city,
      ];
}
