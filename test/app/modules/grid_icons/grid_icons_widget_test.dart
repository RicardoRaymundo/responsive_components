import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:responsive_components/app/modules/grid_icons/grid_icons_widget.dart';

main() {
  testWidgets('GridIconsWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(GridIconsWidget()));
    final textFinder = find.text('GridIcons');
    expect(textFinder, findsOneWidget);
  });
}
