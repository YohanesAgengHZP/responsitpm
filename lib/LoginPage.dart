import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsi_tpm_genshin/SenjataPage.dart';
import 'package:responsi_tpm_genshin/screens/KarakterPage.dart';
import 'package:responsi_tpm_genshin/SenjataPage.dart';

class buttonScreen extends StatefulWidget{
  @override
  _loginscreenState createState() => _loginscreenState();
}
class _loginscreenState extends State<buttonScreen>{

  Widget buildBtnKarakter(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => CharactersPage())
          );
        },
        child: Text(
          'Karakter',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildBtnSenjata(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SenjataPage())
          );
        },
        child: Text(
          'Senjata',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://4.bp.blogspot.com/-iz7Z_jLPL6E/XQ8eHVZTlnI/AAAAAAAAHtA/rDn9sYH174ovD4rbxsC8RSBeanFvfy75QCKgBGAs/w1440-h2560-c/genshin-impact-characters-uhdpaper.com-4K-2.jpg'),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 120
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 450),
                      SizedBox(height: 20),
                      buildBtnKarakter(),
                      buildBtnSenjata(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
