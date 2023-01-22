import 'package:air_quality/core/domain/converters/aq_date_time_converter.dart';
import 'package:air_quality/features/stations/domain/entities/index_level_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'air_quality_entity.g.dart';

@JsonSerializable(converters: [AQDateTimeConverter()])
class AirQualityEntity extends Equatable {
  const AirQualityEntity({
    required this.id,
    this.stCalcDate,
    this.stIndexLevel,
    this.stSourceDataDate,
    this.so2CalcDate,
    this.so2IndexLevel,
    this.so2SourceDataDate,
    this.no2CalcDate,
    this.no2IndexLevel,
    this.no2SourceDataDate,
    this.pm10CalcDate,
    this.pm10IndexLevel,
    this.pm10SourceDataDate,
    this.pm25CalcDate,
    this.pm25IndexLevel,
    this.pm25SourceDataDate,
    this.o3CalcDate,
    this.o3IndexLevel,
    this.o3SourceDataDate,
    this.stIndexStatus,
    this.stIndexCrParam,
  });

  factory AirQualityEntity.fromJson(Map<String, dynamic> json) => _$AirQualityEntityFromJson(json);

  final int? id;
  final DateTime? stCalcDate;
  final IndexLevelEntity? stIndexLevel;
  final DateTime? stSourceDataDate;
  final DateTime? so2CalcDate;
  final IndexLevelEntity? so2IndexLevel;
  final DateTime? so2SourceDataDate;
  final DateTime? no2CalcDate;
  final IndexLevelEntity? no2IndexLevel;
  final DateTime? no2SourceDataDate;
  final DateTime? pm10CalcDate;
  final IndexLevelEntity? pm10IndexLevel;
  final DateTime? pm10SourceDataDate;
  final DateTime? pm25CalcDate;
  final IndexLevelEntity? pm25IndexLevel;
  final DateTime? pm25SourceDataDate;
  final DateTime? o3CalcDate;
  final IndexLevelEntity? o3IndexLevel;
  final DateTime? o3SourceDataDate;
  final bool? stIndexStatus;
  final String? stIndexCrParam;

  Map<String, dynamic> toJson() => _$AirQualityEntityToJson(this);

  @override
  List<Object?> get props => [
        id,
        stCalcDate,
        stIndexLevel,
        stSourceDataDate,
        so2CalcDate,
        so2IndexLevel,
        so2SourceDataDate,
        no2CalcDate,
        no2IndexLevel,
        no2SourceDataDate,
        pm10CalcDate,
        pm10IndexLevel,
        pm10SourceDataDate,
        pm25CalcDate,
        pm25IndexLevel,
        pm25SourceDataDate,
        o3CalcDate,
        o3IndexLevel,
        o3SourceDataDate,
        stIndexStatus,
        stIndexCrParam,
      ];
}
