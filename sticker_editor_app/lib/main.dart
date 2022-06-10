import 'package:flutter/material.dart';
import 'package:stickereditor/stickereditor.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> myFonts = <String>[
    'assets/fonts/b_biketo_work.ttf',
    'assets/fonts/demo.otf',
    'assets/fonts/des_albtros.ttf',
    'assets/fonts/ea_designer.ttf',
    'assets/fonts/eaglesh_pro.ttf',
    'assets/fonts/m_ponderosa.ttf',
    'assets/fonts/tabaquera.ttf',
  ];

  List<Color> myColors = <Color>[
    Colors.black,
    Colors.blue,
    Colors.purple,
    Colors.indigo,
    Colors.deepOrange,
    Colors.amber,
    Colors.redAccent,
    Colors.green,
    Colors.pink,
    Colors.white,
  ];

  List<String> mySticker = <String>[
    'assets/images/a.png',
    'assets/images/b.png',
    'assets/images/bhoot.png',
    'assets/images/cherry.png',
    'assets/images/mahakal.png',
    'assets/images/t.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StickerEditingView(
        isnetwork: false,
        height: 300,
        width: 300,
        imgUrl: 'assets/images/nature.jpg',
        fonts: myFonts,
        palletColor: myColors,
        assetList: mySticker,
      ),
    );
  }
}


