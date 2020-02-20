import 'package:flutter/cupertino.dart';

class GridItem {
  IconData icon;
  String title;
  String subTitle;
  String description;

  GridItem({
    this.icon,
    this.title,
    this.subTitle,
    this.description =
        'Lorem ipsum dolor sit amet consectetur adipiscing elit. Nunc sit amet pulvinar nulla, quis facilisis nulla',
  });
}
