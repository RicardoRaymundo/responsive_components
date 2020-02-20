import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_components/app/modules/grid_icons/grid_item/grid_item_widget.dart';
import 'package:responsive_grid/responsive_grid.dart';

///http://inwavethemes.com/html/athlete/?storefront=envato-elements#

class GridIconsWidget extends StatefulWidget {
  List<Map<String, dynamic>> items;

  GridIconsWidget({this.items});

  @override
  _GridIconsWidgetState createState() => _GridIconsWidgetState();
}

class _GridIconsWidgetState extends State<GridIconsWidget> {

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(children: _buildItems(widget.items));
  }

  List<ResponsiveGridCol> _buildItems(List<Map<String, dynamic>> items) {
    List<ResponsiveGridCol> gridItems = [];
    items.forEach((item) {
      gridItems.add(
        ResponsiveGridCol(
          md: 6,
          lg: 3,
          child: GridItemWidget(item: item))
        ,
      );
    });

    return gridItems;
  }
}
