import 'package:flutter/material.dart';
import 'package:responsive_components/app/modules/grid_icons/grid_item/grid_item.dart';
import 'package:responsive_components/app/modules/grid_icons/grid_item/grid_item_widget.dart';
import 'package:responsive_grid/responsive_grid.dart';

///http://inwavethemes.com/html/athlete/?storefront=envato-elements#

class GridIcons extends StatefulWidget {
  List<Map<String, dynamic>> items;
  Function onClick;
  Color hoverColor;
  Color color;

  GridIcons({this.items, this.onClick, this.hoverColor = Colors.redAccent, this.color = Colors.purple});

  @override
  _GridIconsState createState() => _GridIconsState();
}

class _GridIconsState extends State<GridIcons> {

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
            child: GridItemWidget(
              gridItem: GridItem(icon: item['icon'], title: item['title'], subTitle: item['subTitle'], description: item['description']),
              color: Colors.purple,
              hoverColor: Colors.deepPurple,
              onClick: widget.onClick,))
      );
    });

    return gridItems;
  }
}
