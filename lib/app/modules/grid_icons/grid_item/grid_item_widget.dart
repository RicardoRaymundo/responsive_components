import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItemWidget extends StatefulWidget {
  Map<String, dynamic> item;

  GridItemWidget({this.item});

  @override
  _GridItemWidgetState createState() => _GridItemWidgetState();
}

class _GridItemWidgetState extends State<GridItemWidget> {
  EdgeInsets itemPadding = EdgeInsets.all(10);
  double textPaddingTop = 0;
  double textPaddingBottom = 0;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    Widget buildDividerOrText() {
      if (isHover == true) {
        textPaddingTop = 20;
        textPaddingBottom = 70;
        return Padding(
          padding: EdgeInsets.only(top: textPaddingTop,),
          child: Text(
              'Lorem ipsum dolor sit amet consectetur adipiscing elit. Nunc sit amet pulvinar nulla, quis facilisis nulla',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 12,
                color: Colors.white,
              )),
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

    Widget dividerOrText = buildDividerOrText();

    return Padding(
      padding: MediaQuery.of(context).size.width < 768 ? itemPadding : EdgeInsets.all(0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          hoverColor: Color(0xFFEC3642),
          onHover: (bool hover) {
            print('>>>>>>>>>HOVER' + hover.toString());
            setState(() {
              isHover = hover;
              dividerOrText = buildDividerOrText();
            });
            print('>>>>>>>>>ISHOVER!!' + isHover.toString());
          },
          onTap: () {
            print('<<<<<<<<<<TAP');
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
                  widget.item['icon'],
                  size: 74,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(widget.item['fistTitle'],
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(widget.item['secondTitle'],
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 0,
                ),
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
}
