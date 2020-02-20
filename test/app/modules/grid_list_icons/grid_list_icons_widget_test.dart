import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:responsive_components/app/modules/grid_list_icons/grid_list_icons_widget.dart';

main() {
  testWidgets('GridListIconsWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(GridListIconsWidget()));
    final textFinder = find.text('GridListIcons');
    expect(textFinder, findsOneWidget);
  });
}
