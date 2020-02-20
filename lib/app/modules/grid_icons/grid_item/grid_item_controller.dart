import 'package:mobx/mobx.dart';

part 'grid_item_controller.g.dart';

class GridItemController = _GridItemBase with _$GridItemController;

abstract class _GridItemBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
