import 'package:air_quality/dependencies.dart';
import 'package:air_quality/features/stations/data/stations_repository.dart';
import 'package:air_quality/features/stations/presentation/cubits/station_air_quality_details_cubit.dart';
import 'package:air_quality/features/stations/presentation/cubits/stations_cubit.dart';

void setup() {
  sl
    ..registerLazySingleton(() => StationsRepository(sl()))
    ..registerFactory(() => StationsCubit(sl()))
    ..registerFactory(() => StationAirQualityDetailsCubit(sl()));
}
