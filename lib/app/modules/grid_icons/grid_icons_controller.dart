import 'package:mobx/mobx.dart';

part 'grid_icons_controller.g.dart';

class GridIconsController = _GridIconsBase with _$GridIconsController;

abstract class _GridIconsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
