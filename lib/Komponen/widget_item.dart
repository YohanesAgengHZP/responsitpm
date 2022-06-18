import 'package:responsi_tpm_genshin/Data/Data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:responsi_tpm_genshin/screens/anime_details.dart';
//import 'package:responsi_tpm_genshin/screens/manga_details.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({this.textTitle});
  final String textTitle;
  TopModel tapDetails = TopModel();

  Future<dynamic> animeTapDetails() async {
    return await tapDetails.charaTap(textTitle);
  }

  // Future<dynamic> mangaTapDetails() async {
  //   return await tapDetails.mangaTap(id);
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Card(
        elevation: 10,
        // shadowColor: Colors.lightBlueAccent,
        color: Colors.white,
        margin: EdgeInsets.all(5.0),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: InkWell(
          onTap: () async {
            // if (tapType == TopType.anime) {
            //   var animeDataDetails = await animeTapDetails();
            //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     return AnimeDetails(animeData: animeDataDetails);
            //   }));
            // } else {
            //   // var mangaDataDetails = await mangaTapDetails();
            //   // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   //   return MangaDetails(mangaData: mangaDataDetails);
            //   // }));
            // }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: Image.network('https://api.genshin.dev/characters/${textTitle}/icon', centerSlice: Rect.largest),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    textTitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
