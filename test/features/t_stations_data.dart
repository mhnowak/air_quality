import 'package:air_quality/features/stations/domain/entities/air_quality_entity.dart';
import 'package:air_quality/features/stations/domain/entities/city_entity.dart';
import 'package:air_quality/features/stations/domain/entities/commune_entity.dart';
import 'package:air_quality/features/stations/domain/entities/index_level_entity.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';

const tStationsResponse = [
  tStationResponse,
  // {
  //   'id': 659,
  //   'stationName': 'Nisko, ul. Szklarniowa',
  //   'gegrLat': '50.529892',
  //   'gegrLon': '22.112467',
  //   'city': {
  //     'id': 600,
  //     'name': 'Nisko',
  //     'commune': {'communeName': 'Nisko', 'districtName': 'niżański', 'provinceName': 'PODKARPACKIE'}
  //   },
  //   'addressStreet': 'Szklarniowa'
  // },
];

const tStationResponse = {
  'id': tStationId,
  'stationName': tStationName,
  'gegrLat': tStationGegrLat,
  'gegrLon': tStationGegrLon,
  'city': tCityResponse,
  'addressStreet': tStationAddressStreet,
};

const tStationId = 291;
const tStationName = 'Gajew, Ujęcie Wody';
const tStationGegrLat = '52.143250';
const tStationGegrLon = '19.233225';
const tStationAddressStreet = 'Ujęcie wody';

const tCityResponse = {
  'id': tCityId,
  'name': tCityName,
  'commune': tCommuneResponse,
};

const tCityId = 209;
const tCityName = 'Gajew';
const tCommuneResponse = {
  'communeName': tCommuneName,
  'districtName': tCommuneDistrictName,
  'provinceName': tCommuneProvinceName,
};

const tCommuneName = 'Witonia';
const tCommuneDistrictName = 'łęczycki';
const tCommuneProvinceName = 'ŁÓDZKIE';

const tIndexLevelId = 0;
const tIndexLevelName = 'Bardzo dobry';

const tAirQualityIndexResponse = {
  'id': tStationId,
  'stCalcDate': tStCalcDate,
  'stIndexLevel': tIndexLevelResponse,
  'stSourceDataDate': tStSourceDataDate,
  'so2CalcDate': tSo2CalcDate,
  'so2IndexLevel': tIndexLevelResponse,
  'so2SourceDataDate': tSo2SourceDataDate,
  'no2CalcDate': tNo2CalcDate,
  'no2IndexLevel': tIndexLevelResponse,
  'no2SourceDataDate': tNo2SourceDataDate,
  'pm10CalcDate': tPm10CalcDate,
  'pm10IndexLevel': tIndexLevelResponse,
  'pm10SourceDataDate': tPm10SourceDataDate,
  'pm25CalcDate': tPm25CalcDate,
  'pm25IndexLevel': tIndexLevelResponse,
  'pm25SourceDataDate': tPm25SourceDataDate,
  'o3CalcDate': tO3CalcDate,
  'o3IndexLevel': tIndexLevelResponse,
  'o3SourceDataDate': tO3SourceDataDate,
  'stIndexStatus': tStIndexStatus,
  'stIndexCrParam': tStIndexCrParam,
};

const tAirQualityIndexResponseNull = {
  'id': null,
  'stCalcDate': null,
  'stIndexLevel': null,
  'stSourceDataDate': null,
  'so2CalcDate': null,
  'so2IndexLevel': null,
  'so2SourceDataDate': null,
  'no2CalcDate': null,
  'no2IndexLevel': null,
  'no2SourceDataDate': null,
  'pm10CalcDate': null,
  'pm10IndexLevel': null,
  'pm10SourceDataDate': null,
  'pm25CalcDate': null,
  'pm25IndexLevel': null,
  'pm25SourceDataDate': null,
  'o3CalcDate': null,
  'o3IndexLevel': null,
  'o3SourceDataDate': null,
  'stIndexStatus': null,
  'stIndexCrParam': null,
};

const tIndexLevelResponse = {'id': tIndexLevelId, 'indexLevelName': tIndexLevelName};

const tStCalcDate = '2022-11-12 13:20:10';
const tStSourceDataDate = '2022-11-12 12:00:00';
const tSo2CalcDate = '2022-11-12 13:20:10';
const tNo2CalcDate = '2022-11-12 13:20:10';
const tSo2SourceDataDate = '2022-11-12 13:20:10';
const tNo2SourceDataDate = '2022-11-12 13:20:10';
const tPm10CalcDate = '2022-11-12 13:20:10';
const tPm10SourceDataDate = '2022-11-12 12:00:00';
const tPm25CalcDate = '2022-11-12 12:00:00';
const tPm25SourceDataDate = '2022-11-12 12:00:00';
const tO3CalcDate = '2022-11-12 12:00:00';
const tO3SourceDataDate = '2022-11-12 12:00:00';
const tStIndexStatus = true;
const tStIndexCrParam = 'PYL';

final tStCalcDateTime = DateTime(2022, 11, 12, 13, 20, 10);
final tStSourceDataDateTime = DateTime(2022, 11, 12, 12, 00, 00);
final tSo2CalcDateTime = DateTime(2022, 11, 12, 13, 20, 10);
final tNo2CalcDateTime = DateTime(2022, 11, 12, 13, 20, 10);
final tSo2SourceDataDateTime = DateTime(2022, 11, 12, 13, 20, 10);
final tNo2SourceDataDateTime = DateTime(2022, 11, 12, 13, 20, 10);
final tPm10CalcDateTime = DateTime(2022, 11, 12, 13, 20, 10);
final tPm10SourceDataDateTime = DateTime(2022, 11, 12, 12, 00, 00);
final tPm25CalcDateTime = DateTime(2022, 11, 12, 12, 00, 00);
final tPm25SourceDataDateTime = DateTime(2022, 11, 12, 12, 00, 00);
final tO3CalcDateTime = DateTime(2022, 11, 12, 12, 00, 00);
final tO3SourceDataDateTime = DateTime(2022, 11, 12, 12, 00, 00);

StationEntity tStationEntity({
  int id = tStationId,
  String stationName = tStationName,
  String gegrLat = tStationGegrLat,
  String gegrLon = tStationGegrLon,
  String addressStreet = tStationAddressStreet,
  CityEntity? city,
}) =>
    StationEntity(
      id: id,
      stationName: stationName,
      gegrLat: gegrLat,
      gegrLon: gegrLon,
      addressStreet: addressStreet,
      city: city ?? tCityEntity(),
    );

CityEntity tCityEntity({
  int id = tCityId,
  String name = tCityName,
  CommuneEntity? commune,
}) =>
    CityEntity(
      id: id,
      name: name,
      commune: commune ?? tCommuneEntity(),
    );

CommuneEntity tCommuneEntity({
  String communeName = tCommuneName,
  String districtName = tCommuneDistrictName,
  String provinceName = tCommuneProvinceName,
}) =>
    CommuneEntity(
      communeName: communeName,
      districtName: districtName,
      provinceName: provinceName,
    );

AirQualityEntity tAirQualityEntity({
  int? id,
  DateTime? no2CalcDate,
  IndexLevelEntity? no2IndexLevel,
  DateTime? no2SourceDataDate,
  DateTime? o3CalcDate,
  IndexLevelEntity? o3IndexLevel,
  DateTime? o3SourceDataDate,
  DateTime? pm10CalcDate,
  IndexLevelEntity? pm10IndexLevel,
  DateTime? pm10SourceDataDate,
  DateTime? pm25CalcDate,
  IndexLevelEntity? pm25IndexLevel,
  DateTime? pm25SourceDataDate,
  DateTime? so2CalcDate,
  IndexLevelEntity? so2IndexLevel,
  DateTime? so2SourceDataDate,
  DateTime? stCalcDate,
  String? stIndexCrParam,
  IndexLevelEntity? stIndexLevel,
  bool? stIndexStatus,
  DateTime? stSourceDataDate,
}) =>
    AirQualityEntity(
      id: id ?? tStationId,
      no2CalcDate: no2CalcDate ?? tNo2CalcDateTime,
      no2IndexLevel: no2IndexLevel ?? tIndexLevelEntity(),
      no2SourceDataDate: no2SourceDataDate ?? tNo2SourceDataDateTime,
      o3CalcDate: o3CalcDate ?? tO3CalcDateTime,
      o3IndexLevel: o3IndexLevel ?? tIndexLevelEntity(),
      o3SourceDataDate: o3SourceDataDate ?? tO3SourceDataDateTime,
      pm10CalcDate: pm10CalcDate ?? tPm10CalcDateTime,
      pm10IndexLevel: pm10IndexLevel ?? tIndexLevelEntity(),
      pm10SourceDataDate: pm10SourceDataDate ?? tPm10SourceDataDateTime,
      pm25CalcDate: pm25CalcDate ?? tPm25CalcDateTime,
      pm25IndexLevel: pm25IndexLevel ?? tIndexLevelEntity(),
      pm25SourceDataDate: pm25SourceDataDate ?? tPm25SourceDataDateTime,
      so2CalcDate: so2CalcDate ?? tSo2CalcDateTime,
      so2IndexLevel: so2IndexLevel ?? tIndexLevelEntity(),
      so2SourceDataDate: so2SourceDataDate ?? tSo2SourceDataDateTime,
      stCalcDate: stCalcDate ?? tStCalcDateTime,
      stIndexCrParam: stIndexCrParam ?? tStIndexCrParam,
      stIndexLevel: stIndexLevel ?? tIndexLevelEntity(),
      stIndexStatus: stIndexStatus ?? tStIndexStatus,
      stSourceDataDate: stSourceDataDate ?? tStSourceDataDateTime,
    );

IndexLevelEntity tIndexLevelEntity({
  int id = tIndexLevelId,
  String name = tIndexLevelName,
}) =>
    IndexLevelEntity(
      id: id,
      indexLevelName: name,
    );
