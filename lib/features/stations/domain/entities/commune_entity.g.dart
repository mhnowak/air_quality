// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commune_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommuneEntity _$CommuneEntityFromJson(Map<String, dynamic> json) =>
    CommuneEntity(
      communeName: json['communeName'] as String,
      districtName: json['districtName'] as String,
      provinceName: json['provinceName'] as String,
    );

Map<String, dynamic> _$CommuneEntityToJson(CommuneEntity instance) =>
    <String, dynamic>{
      'communeName': instance.communeName,
      'districtName': instance.districtName,
      'provinceName': instance.provinceName,
    };
