import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:responsive_components/app/modules/grid_icons/grid_item/grid_item_controller.dart';
import 'package:responsive_components/app/app_module.dart';

void main() {
  initModule(AppModule());
  GridItemController griditem;

  setUp(() {
    griditem = AppModule.to.get<GridItemController>();
  });

  group('GridItemController Test', () {
    test("First Test", () {
      expect(griditem, isInstanceOf<GridItemController>());
    });

    test("Set Value", () {
      expect(griditem.value, equals(0));
      griditem.increment();
      expect(griditem.value, equals(1));
    });
  });
}
