import 'package:air_quality/core/presentation/widgets/basic/aq_scaffold.dart';
import 'package:air_quality/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

class StationsPage extends StatelessWidget {
  const StationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AQScaffold(title: S.of(context).stationsTitle.titleCase);
  }
}
