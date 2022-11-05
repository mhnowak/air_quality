import 'package:air_quality/core/presentation/widgets/basic/air_quality_app_bar.dart';
import 'package:flutter/material.dart';

class AQScaffold extends StatelessWidget {
  const AQScaffold({
    Key? key,
    this.body,
    this.title,
  }) : super(key: key);

  final Widget? body;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AQAppBar(title: title),
      body: body,
    );
  }
}
