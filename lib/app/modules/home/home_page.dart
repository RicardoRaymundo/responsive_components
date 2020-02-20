import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:responsive_components/app/modules/grid_icons/grid_icons.dart';
import 'package:responsive_components/app/modules/grid_icons/grid_item/grid_item.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> items = [

    /// TODO :: Implementar campo description
    {
      'icon': OMIcons.phoneAndroid,
      'title': 'CELULAR',
      'subTitle': 'ANDROID & IOS',
      'description': 'Telefone celular ou telemóvel é um aparelho de comunicação por ondas eletromagnéticas que permite a transmissão bidirecional de voz e dados utilizáveis em uma área geográfica que se encontra dividida em células, cada uma delas servida por um transmissor/receptor.',
    },
    {
      'icon': OMIcons.cached,
      'title': 'INCLUDED',
      'subTitle': 'LAYER SLIDER',
    },
    {
      'icon': OMIcons.map,
      'title': 'INCLUDED',
      'subTitle': '30+ HTML PAGES',
    },
    {
      'icon': OMIcons.accountBalance,
      'title': 'INCLUDED',
      'subTitle': 'ONEPAGE VERSION',
    },
    {
      'icon': OMIcons.settings,
      'title': 'BASE ON',
      'subTitle': 'LATEST BOOTSTRAP',
    },
    {
      'icon': OMIcons.print,
      'title': 'INCLUDED',
      'subTitle': '30+ PHOTOSHOP FILE',
    },
    {
      'icon': OMIcons.work,
      'title': 'INCLUDED',
      'subTitle': 'FITNESS ICON PACKAGE',
    },
    {
      'icon': OMIcons.keyboard,
      'title': 'VALIDATED',
      'subTitle': 'HTML & CSS',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //color: Colors.black87,
          child: GridIcons(
            items: items,
            color: Colors.purple,
            hoverColor: Colors.deepPurple,
            onClick: (GridItem item) {
              print('ITEM---->>>> ' + item.subTitle);
            },
          ),
          //child: GridListIconsWidget(),
        ),
      ),
    );
  }
}
