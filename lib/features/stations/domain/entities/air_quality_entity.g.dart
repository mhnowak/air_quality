// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQualityEntity _$AirQualityEntityFromJson(Map<String, dynamic> json) =>
    AirQualityEntity(
      id: json['id'] as int?,
      stCalcDate: _$JsonConverterFromJson<String, DateTime>(
          json['stCalcDate'], const AQDateTimeConverter().fromJson),
      stIndexLevel: json['stIndexLevel'] == null
          ? null
          : IndexLevelEntity.fromJson(
              json['stIndexLevel'] as Map<String, dynamic>),
      stSourceDataDate: _$JsonConverterFromJson<String, DateTime>(
          json['stSourceDataDate'], const AQDateTimeConverter().fromJson),
      so2CalcDate: _$JsonConverterFromJson<String, DateTime>(
          json['so2CalcDate'], const AQDateTimeConverter().fromJson),
      so2IndexLevel: json['so2IndexLevel'] == null
          ? null
          : IndexLevelEntity.fromJson(
              json['so2IndexLevel'] as Map<String, dynamic>),
      so2SourceDataDate: _$JsonConverterFromJson<String, DateTime>(
          json['so2SourceDataDate'], const AQDateTimeConverter().fromJson),
      no2CalcDate: _$JsonConverterFromJson<String, DateTime>(
          json['no2CalcDate'], const AQDateTimeConverter().fromJson),
      no2IndexLevel: json['no2IndexLevel'] == null
          ? null
          : IndexLevelEntity.fromJson(
              json['no2IndexLevel'] as Map<String, dynamic>),
      no2SourceDataDate: _$JsonConverterFromJson<String, DateTime>(
          json['no2SourceDataDate'], const AQDateTimeConverter().fromJson),
      pm10CalcDate: _$JsonConverterFromJson<String, DateTime>(
          json['pm10CalcDate'], const AQDateTimeConverter().fromJson),
      pm10IndexLevel: json['pm10IndexLevel'] == null
          ? null
          : IndexLevelEntity.fromJson(
              json['pm10IndexLevel'] as Map<String, dynamic>),
      pm10SourceDataDate: _$JsonConverterFromJson<String, DateTime>(
          json['pm10SourceDataDate'], const AQDateTimeConverter().fromJson),
      pm25CalcDate: _$JsonConverterFromJson<String, DateTime>(
          json['pm25CalcDate'], const AQDateTimeConverter().fromJson),
      pm25IndexLevel: json['pm25IndexLevel'] == null
          ? null
          : IndexLevelEntity.fromJson(
              json['pm25IndexLevel'] as Map<String, dynamic>),
      pm25SourceDataDate: _$JsonConverterFromJson<String, DateTime>(
          json['pm25SourceDataDate'], const AQDateTimeConverter().fromJson),
      o3CalcDate: _$JsonConverterFromJson<String, DateTime>(
          json['o3CalcDate'], const AQDateTimeConverter().fromJson),
      o3IndexLevel: json['o3IndexLevel'] == null
          ? null
          : IndexLevelEntity.fromJson(
              json['o3IndexLevel'] as Map<String, dynamic>),
      o3SourceDataDate: _$JsonConverterFromJson<String, DateTime>(
          json['o3SourceDataDate'], const AQDateTimeConverter().fromJson),
      stIndexStatus: json['stIndexStatus'] as bool?,
      stIndexCrParam: json['stIndexCrParam'] as String?,
    );

Map<String, dynamic> _$AirQualityEntityToJson(AirQualityEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stCalcDate': _$JsonConverterToJson<String, DateTime>(
          instance.stCalcDate, const AQDateTimeConverter().toJson),
      'stIndexLevel': instance.stIndexLevel?.toJson(),
      'stSourceDataDate': _$JsonConverterToJson<String, DateTime>(
          instance.stSourceDataDate, const AQDateTimeConverter().toJson),
      'so2CalcDate': _$JsonConverterToJson<String, DateTime>(
          instance.so2CalcDate, const AQDateTimeConverter().toJson),
      'so2IndexLevel': instance.so2IndexLevel?.toJson(),
      'so2SourceDataDate': _$JsonConverterToJson<String, DateTime>(
          instance.so2SourceDataDate, const AQDateTimeConverter().toJson),
      'no2CalcDate': _$JsonConverterToJson<String, DateTime>(
          instance.no2CalcDate, const AQDateTimeConverter().toJson),
      'no2IndexLevel': instance.no2IndexLevel?.toJson(),
      'no2SourceDataDate': _$JsonConverterToJson<String, DateTime>(
          instance.no2SourceDataDate, const AQDateTimeConverter().toJson),
      'pm10CalcDate': _$JsonConverterToJson<String, DateTime>(
          instance.pm10CalcDate, const AQDateTimeConverter().toJson),
      'pm10IndexLevel': instance.pm10IndexLevel?.toJson(),
      'pm10SourceDataDate': _$JsonConverterToJson<String, DateTime>(
          instance.pm10SourceDataDate, const AQDateTimeConverter().toJson),
      'pm25CalcDate': _$JsonConverterToJson<String, DateTime>(
          instance.pm25CalcDate, const AQDateTimeConverter().toJson),
      'pm25IndexLevel': instance.pm25IndexLevel?.toJson(),
      'pm25SourceDataDate': _$JsonConverterToJson<String, DateTime>(
          instance.pm25SourceDataDate, const AQDateTimeConverter().toJson),
      'o3CalcDate': _$JsonConverterToJson<String, DateTime>(
          instance.o3CalcDate, const AQDateTimeConverter().toJson),
      'o3IndexLevel': instance.o3IndexLevel?.toJson(),
      'o3SourceDataDate': _$JsonConverterToJson<String, DateTime>(
          instance.o3SourceDataDate, const AQDateTimeConverter().toJson),
      'stIndexStatus': instance.stIndexStatus,
      'stIndexCrParam': instance.stIndexCrParam,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
