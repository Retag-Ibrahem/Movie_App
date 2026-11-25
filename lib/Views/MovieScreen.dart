import 'package:flutter/material.dart';
import 'package:movie_app/Customes/CardCustomes.dart';
import 'package:movie_app/Models/MovieModel.dart';
import 'package:movie_app/Providers/MovieProvider.dart';
import 'package:movie_app/Views/Deatils.dart';
import 'package:provider/provider.dart';

class Moviescreen extends StatelessWidget {
  const Moviescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Movie",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),

      ),
      body: Consumer<Movieprovider>(builder: (context,value,child){
        if(value.moviemodel==null){
          value.GetMovieProvider();
          return CircularProgressIndicator();
        }else{
          return
          ListView.builder(itemCount: value.moviemodel!.data.length,itemBuilder: (context,index)
          =>GestureDetector(onTap: ()
          {Navigator.push(context, MaterialPageRoute(builder: (context)=>Deatils(ImageUrl: value.moviemodel!.data[index]["poster"], Titlee: value.moviemodel!.data[index]["name"], showDate: value.moviemodel!.data[index]["showDate"], showTime: value.moviemodel!.data[index]["showTime"], Seats: value.moviemodel!.data[index]["seats"],)));},
          
                     child:  Cardcustomes(ImageUrl: value.moviemodel!.data[index]["poster"], Titlee: value.moviemodel!.data[index]["name"], showDate: value.moviemodel!.data[index]["showDate"], showTime: value.moviemodel!.data[index]["showTime"])),
                     );
        }


      }),
    );
  }
}