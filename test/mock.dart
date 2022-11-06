import 'package:air_quality/core/data/network_manager.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

class MockNetworkManager extends Mock implements NetworkManager {}
