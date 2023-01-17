import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'index_level_entity.g.dart';

@JsonSerializable()
class IndexLevelEntity extends Equatable {
  const IndexLevelEntity({
    required this.id,
    required this.indexLevelName,
  });

  factory IndexLevelEntity.fromJson(Map<String, dynamic> json) => _$IndexLevelEntityFromJson(json);

  final int id;
  final String indexLevelName;

  Map<String, dynamic> toJson() => _$IndexLevelEntityToJson(this);

  @override
  List<Object?> get props => [id, indexLevelName];
}
