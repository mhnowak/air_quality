import 'package:air_quality/features/stations/domain/entities/commune_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'city_entity.g.dart';

@JsonSerializable()
class CityEntity extends Equatable {
  const CityEntity({
    required this.id,
    required this.name,
    required this.commune,
  });

  factory CityEntity.fromJson(Map<String, dynamic> json) => _$CityEntityFromJson(json);

  final int id;
  final String name;
  final CommuneEntity commune;

  Map<String, dynamic> toJson() => _$CityEntityToJson(this);

  @override
  List<Object?> get props => [id, name, commune];
}
