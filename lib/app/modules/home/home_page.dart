import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:responsive_components/app/modules/grid_icons/grid_icons_widget.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> items = [
    {
      'icon': OMIcons.phoneAndroid,
      'fistTitle': 'SUPPORTED',
      'secondTitle': 'RESPONSIVE & RETINA',
    },
    {
      'icon': OMIcons.cached,
      'fistTitle': 'INCLUDED',
      'secondTitle': 'LAYER SLIDER',
    },
    {
      'icon': OMIcons.map,
      'fistTitle': 'INCLUDED',
      'secondTitle': '30+ HTML PAGES',
    },
    {
      'icon': OMIcons.accountBalance,
      'fistTitle': 'INCLUDED',
      'secondTitle': 'ONEPAGE VERSION',
    },
    {
      'icon': OMIcons.settings,
      'fistTitle': 'BASE ON',
      'secondTitle': 'LATEST BOOTSTRAP',
    },
    {
      'icon': OMIcons.print,
      'fistTitle': 'INCLUDED',
      'secondTitle': '30+ PHOTOSHOP FILE',
    },
    {
      'icon': OMIcons.work,
      'fistTitle': 'INCLUDED',
      'secondTitle': 'FITNESS ICON PACKAGE',
    },
    {
      'icon': OMIcons.keyboard,
      'fistTitle': 'VALIDATED',
      'secondTitle': 'HTML & CSS',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black87,
          child: GridIconsWidget(items: items),
          //child: GridListIconsWidget(),
        ),
      ),
    );
  }
}
/*
ResponsiveGridCol(
                  xs: 6,
                  md: 3,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 70),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.assignment_turned_in, size: 70,),
                        SizedBox(height: 20,),
                        Text('INCLUDED', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        Text('LAYER SLIDER', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ),
*/
