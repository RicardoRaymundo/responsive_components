import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:responsive_components/app/modules/grid_icons/grid_icons_controller.dart';
import 'package:responsive_components/app/app_module.dart';

void main() {
  initModule(AppModule());
  GridIconsController gridicons;

  setUp(() {
    gridicons = AppModule.to.get<GridIconsController>();
  });

  group('GridIconsController Test', () {
    test("First Test", () {
      expect(gridicons, isInstanceOf<GridIconsController>());
    });

    test("Set Value", () {
      expect(gridicons.value, equals(0));
      gridicons.increment();
      expect(gridicons.value, equals(1));
    });
  });
}
