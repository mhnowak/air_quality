// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationEntity _$StationEntityFromJson(Map<String, dynamic> json) =>
    StationEntity(
      id: json['id'] as int,
      stationName: json['stationName'] as String,
      gegrLat: json['gegrLat'] as String,
      gegrLon: json['gegrLon'] as String,
      addressStreet: json['addressStreet'] as String?,
      city: CityEntity.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StationEntityToJson(StationEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stationName': instance.stationName,
      'gegrLat': instance.gegrLat,
      'gegrLon': instance.gegrLon,
      'addressStreet': instance.addressStreet,
      'city': instance.city.toJson(),
    };
