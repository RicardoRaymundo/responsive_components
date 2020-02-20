import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class GridListIconsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
        desiredItemWidth: 100,
        minSpacing: 10,
        children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].map((i) {
          return Container(
            height: 100,
            alignment: Alignment(0, 0),
            color: Colors.cyan,
            child: Text(i.toString()),
          );
        }).toList());
  }
}
