import 'package:air_quality/core/dependencies.dart';
import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/features/stations/data/stations_repository.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';
import 'package:air_quality/features/stations/presentation/notifiers/stations_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stationsRepositoryProvider = Provider((ref) => StationsRepository(ref.watch(networkManagerProvider)));

final stationsProvider =
    StateNotifierProvider.autoDispose<StateNotifier<DataState<List<StationEntity>>>, DataState<List<StationEntity>>>(
        (ref) => StationsNotifier(ref.watch(stationsRepositoryProvider)));
