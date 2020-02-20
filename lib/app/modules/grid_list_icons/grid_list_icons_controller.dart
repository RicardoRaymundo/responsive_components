import 'package:mobx/mobx.dart';

part 'grid_list_icons_controller.g.dart';

class GridListIconsController = _GridListIconsBase
    with _$GridListIconsController;

abstract class _GridListIconsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
