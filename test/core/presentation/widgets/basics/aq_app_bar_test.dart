import 'package:air_quality/core/presentation/theme/theme.dart';
import 'package:air_quality/core/presentation/widgets/basic/aq_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../golden_test_runner.dart';

void main() {
  goldenTest(
    'AQ App Bar',
    constraints: const BoxConstraints(
      maxWidth: kMobileDeviceWidth,
      maxHeight: (kToolbarHeight + 8) * 3 * 2 + 16,
    ),
    builder: () {
      final widget = Column(
        children: const [
          AQAppBar(),
          SizedBox(height: 8),
          AQAppBar(title: 'Short title'),
          SizedBox(height: 8),
          AQAppBar(title: 'Very very very very very long title like really long'),
          SizedBox(height: 8),
        ],
      );

      return Column(
        children: [
          Theme(
            data: lightTheme,
            child: widget,
          ),
          Theme(
            data: darkTheme,
            child: widget,
          ),
        ],
      );
    },
  );
}
