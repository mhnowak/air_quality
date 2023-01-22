import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class AQDateTimeConverter implements JsonConverter<DateTime, String> {
  const AQDateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => DateFormat('yyyy-MM-dd HH:mm:ss').format(object);
}
