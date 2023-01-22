import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/core/presentation/widgets/basic/aq_scaffold.dart';
import 'package:air_quality/dependencies.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';
import 'package:air_quality/features/stations/presentation/cubits/stations_cubit.dart';
import 'package:air_quality/features/stations/presentation/pages/station_air_quality_details_page.dart';
import 'package:air_quality/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recase/recase.dart';

class StationsPage extends StatelessWidget {
  const StationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<StationsCubit>(),
      child: AQScaffold(
        title: S.of(context).stationsTitle.titleCase,
        body: const StationsList(),
      ),
    );
  }
}

class StationsList extends StatelessWidget {
  const StationsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StationsCubit>().state;

    if (state is LoadedState<List<StationEntity>>) {
      return ListView.builder(
        itemCount: state.data.length,
        itemBuilder: (context, index) {
          final data = state.data[index];
          return ListTile(
            title: Text(data.stationName),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => StationAirQualityDetailsPage(
                  id: data.id,
                  stationName: data.stationName,
                ),
              ),
            ),
          );
        },
      );
    } else if (state is ExceptionState<List<StationEntity>>) {
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
