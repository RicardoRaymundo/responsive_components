import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:responsive_components/app/modules/grid_list_icons/grid_list_icons_controller.dart';
import 'package:responsive_components/app/app_module.dart';

void main() {
  initModule(AppModule());
  GridListIconsController gridlisticons;

  setUp(() {
    gridlisticons = AppModule.to.get<GridListIconsController>();
  });

  group('GridListIconsController Test', () {
    test("First Test", () {
      expect(gridlisticons, isInstanceOf<GridListIconsController>());
    });

    test("Set Value", () {
      expect(gridlisticons.value, equals(0));
      gridlisticons.increment();
      expect(gridlisticons.value, equals(1));
    });
  });
}
