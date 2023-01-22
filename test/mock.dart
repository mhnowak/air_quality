import 'package:air_quality/core/data/error_reporter/error_reporter.dart';
import 'package:air_quality/core/data/networking/network_manager.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/features/stations/data/stations_repository.dart';
import 'package:air_quality/features/stations/domain/entities/air_quality_entity.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';
import 'package:air_quality/features/stations/presentation/cubits/station_air_quality_details_cubit.dart';
import 'package:air_quality/features/stations/presentation/cubits/stations_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

class MockErrorReporter extends Mock implements ErrorReporter {}

class MockNetworkManager extends Mock implements NetworkManager {}

class MockStationsRepository extends Mock implements StationsRepository {}

class MockStationsCubit extends MockCubit<DataState<List<StationEntity>>> implements StationsCubit {}

class MockStationAirQualityDetailsCubit extends MockCubit<DataState<AirQualityEntity>>
    implements StationAirQualityDetailsCubit {}
