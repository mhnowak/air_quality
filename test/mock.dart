import 'package:air_quality/core/data/network_manager.dart';
import 'package:air_quality/features/stations/data/stations_repository.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

class MockNetworkManager extends Mock implements NetworkManager {}

class MockStationsRepository extends Mock implements StationsRepository {}
