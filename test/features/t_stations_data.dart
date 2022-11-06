import 'package:air_quality/features/stations/domain/entities/city_entity.dart';
import 'package:air_quality/features/stations/domain/entities/commune_entity.dart';
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
