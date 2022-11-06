import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'commune_entity.g.dart';

@JsonSerializable()
class CommuneEntity extends Equatable {
  const CommuneEntity({
    required this.communeName,
    required this.districtName,
    required this.provinceName,
  });

  factory CommuneEntity.fromJson(Map<String, dynamic> json) => _$CommuneEntityFromJson(json);

  final String communeName;
  final String districtName;
  final String provinceName;

  Map<String, dynamic> toJson() => _$CommuneEntityToJson(this);

  @override
  List<Object?> get props => [communeName, districtName, provinceName];
}
