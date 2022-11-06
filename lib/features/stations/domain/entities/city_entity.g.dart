// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityEntity _$CityEntityFromJson(Map<String, dynamic> json) => CityEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      commune: CommuneEntity.fromJson(json['commune'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityEntityToJson(CityEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'commune': instance.commune.toJson(),
    };
