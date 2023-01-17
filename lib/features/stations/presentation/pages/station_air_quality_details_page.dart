import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/core/presentation/widgets/basic/aq_scaffold.dart';
import 'package:air_quality/dependencies.dart';
import 'package:air_quality/features/stations/domain/entities/air_quality_entity.dart';
import 'package:air_quality/features/stations/presentation/cubits/station_air_quality_details_cubit.dart';
import 'package:air_quality/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StationAirQualityDetailsPage extends StatelessWidget {
  const StationAirQualityDetailsPage({
    Key? key,
    required this.id,
    required this.stationName,
  }) : super(key: key);

  final int id;
  final String stationName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<StationAirQualityDetailsCubit>()..load(id),
      child: AQScaffold(
        title: stationName,
        body: const StationAirQualityDetails(),
      ),
    );
  }
}

class StationAirQualityDetails extends StatelessWidget {
  const StationAirQualityDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StationAirQualityDetailsCubit>().state;

    if (state is LoadedState<AirQualityEntity>) {
      return Text(state.data.id.toString());
    } else if (state is ExceptionState<AirQualityEntity>) {
      return Center(
        child: Text(
          S.of(context).stationsExceptionMessage,
          textAlign: TextAlign.center,
        ),
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
