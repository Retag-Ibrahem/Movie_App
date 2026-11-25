import 'package:flutter/material.dart';
import 'package:movie_app/Customes/CardCustomes.dart';

class Deatilsavalibleseats extends StatelessWidget {
   final String ImageUrl;
  final String Titlee;
  final String showDate;
  final String showTime;
  final String SeatNumber;

  const Deatilsavalibleseats({super.key, required this.ImageUrl,
    required this.Titlee,
    required this.showDate,
    required this.showTime,
    required this.SeatNumber
   });

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(Titlee,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),

      ),
      body: Column(children: [
        Cardcustomes(ImageUrl: ImageUrl, Titlee: Titlee, showDate: showDate, showTime: showTime),
        SizedBox(height: 10,),
        Text("Entet Your Name",style:  TextStyle(fontWeight: FontWeight.bold)),
         SizedBox(height: 5,),
        TextField(
          decoration: InputDecoration(
            label: Text("Full Name"),
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),

          ),
        ),

        SizedBox(height: 400,),
        Expanded(
          
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center, children: [
              ElevatedButton(onPressed: (){}, child: Text("Cancel"),),
              SizedBox(width: 20,),
               ElevatedButton(onPressed: (){}, child: Text("Confirmed"),),
            
            ],),
          ),
        )
      ],),

      
      );
  }
}