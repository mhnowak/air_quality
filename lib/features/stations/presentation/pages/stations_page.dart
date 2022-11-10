import 'package:air_quality/core/domain/state/data_state.dart';
import 'package:air_quality/core/presentation/widgets/basic/aq_scaffold.dart';
import 'package:air_quality/features/stations/dependencies.dart';
import 'package:air_quality/features/stations/domain/entities/station_entity.dart';
import 'package:air_quality/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

class StationsPage extends StatelessWidget {
  const StationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AQScaffold(
      title: S.of(context).stationsTitle.titleCase,
      body: const StationsList(),
    );
  }
}

class StationsList extends ConsumerWidget {
  const StationsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(stationsProvider);

    if (state is LoadedState<List<StationEntity>>) {
      return ListView.builder(
        itemCount: state.data.length,
        itemBuilder: (context, index) => ListTile(title: Text(state.data[index].stationName)),
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
