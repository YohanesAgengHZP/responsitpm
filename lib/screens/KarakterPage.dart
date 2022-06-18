import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsi_tpm_genshin/Model/karakter_item.dart';
import 'package:flutter/painting.dart';
import 'package:responsi_tpm_genshin/Data/Data.dart';
import 'package:responsi_tpm_genshin/Komponen/widget_item.dart';


class CharactersPage extends StatefulWidget {
  CharactersPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  TopModel charaModel = TopModel();
  List<CharaItem> items = [];

  @override
  void initState() {
    super.initState();
    getAnimeData();
  }

  void getAnimeData() async {
    var charaData = await charaModel.getCharacters();

    setState(() {
      if (charaData == null) {
        return;
      } else {
        for (var item in charaData) {
          var charaName = item;
          var topAnime = CharaItem(name: charaName);
          items.add(topAnime);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Characters'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        child: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 9 / 21),
          itemBuilder: (context, index) {
            return ItemWidget(
              textTitle: items[index].name,
            );
          },
          itemCount: items.length,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
