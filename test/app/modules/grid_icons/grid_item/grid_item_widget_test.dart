import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:responsive_components/app/modules/grid_icons/grid_item/grid_item_widget.dart';

main() {
  testWidgets('GridItemWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(GridItemWidget()));
    final textFinder = find.text('GridItem');
    expect(textFinder, findsOneWidget);
  });
}
