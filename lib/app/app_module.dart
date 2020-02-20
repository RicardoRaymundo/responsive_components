import 'package:responsive_components/app/modules/grid_icons/grid_item/grid_item_controller.dart';
import 'package:responsive_components/app/modules/grid_list_icons/grid_list_icons_controller.dart';
import 'package:responsive_components/app/modules/grid_icons/grid_icons_controller.dart';
import 'package:responsive_components/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:responsive_components/app/app_widget.dart';
import 'package:responsive_components/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GridItemController()),
        Bind((i) => GridListIconsController()),
        Bind((i) => GridIconsController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
