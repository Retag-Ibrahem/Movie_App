import 'package:flutter/material.dart';
import 'package:movie_app/Customes/CardCustomes.dart';

class Deatilsnotavalible extends StatelessWidget {
  final String ImageUrl;
  final String Titlee;
  final String showDate;
  final String showTime;
  const Deatilsnotavalible({super.key, required this.ImageUrl,
    required this.Titlee,
    required this.showDate,
    required this.showTime,});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(Titlee,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),

      ),
      body: Column(children: [
        Cardcustomes(ImageUrl: ImageUrl, Titlee: Titlee, showDate: showDate, showTime: showTime),
        

      ],),
      
      );
  }
}