import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_components/app/modules/grid_icons/grid_item/grid_item.dart';

class GridItemWidget extends StatefulWidget {
  GridItem gridItem;
  Color hoverColor;
  Color color;
  Function onClick;

  GridItemWidget({this.gridItem, this.hoverColor = Colors.redAccent, this.color = Colors.purple, this.onClick});

  @override
  _GridItemWidgetState createState() => _GridItemWidgetState();
}

class _GridItemWidgetState extends State<GridItemWidget> {
  double textPaddingTop = 0;
  double textPaddingBottom = 0;
  bool isHover = false;


  @override
  Widget build(BuildContext context) {
    Widget dividerOrText = _buildDividerOrText();
    return Padding(
      padding: MediaQuery
          .of(context)
          .size
          .width < 768 ? EdgeInsets.all(10) : EdgeInsets.all(0),
      child: Material(
        color: widget.color,
        child: InkWell(
          hoverColor: widget.hoverColor,
          onHover: (bool hover) {
            setState(() {
              isHover = hover;
              dividerOrText = _buildDividerOrText();
            });
          },
          onTap: () {
            widget.onClick(widget.gridItem);
          },
          child: Container(
            height: 313,
            decoration: BoxDecoration(
              border: Border.all(width: 1, style: BorderStyle.solid, color: Color.fromRGBO(255, 255, 255, 0.1)),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  widget.gridItem.icon,
                  size: 74,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(widget.gridItem.title,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(widget.gridItem.subTitle,
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                AnimatedPadding(
                  curve: Curves.ease,
                  duration: Duration(milliseconds: 350),
                  padding: EdgeInsets.only(bottom: textPaddingBottom, left: 15, right: 15, ),
                  child: dividerOrText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDividerOrText() {
    if (isHover == true) {
      textPaddingTop = 20;
      textPaddingBottom = 0;
      return Padding(
        padding: EdgeInsets.only(top: textPaddingTop,),
        child: Text(
          truncateWithEllipsis(120, widget.gridItem.description != null ? widget.gridItem.description : 'Lorem ipsum dolor sit amet consectetur adipiscing elit. Nunc sit amet pulvinar nulla, quis facilisis nulla',
          ),
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 12,
              color: Colors.white,
            ),
        ),
      );
    } else {
      textPaddingTop = 0;
      textPaddingBottom = 0;
      return Container(
        width: 50,
        child: Divider(
          thickness: 2,
          color: Colors.white,
        ),
      );
    }
  }

  String truncateWithEllipsis(int cutoff, String myString) {
    return (myString.length <= cutoff)
        ? myString
        : '${myString.substring(0, cutoff)}...';
  }

}
