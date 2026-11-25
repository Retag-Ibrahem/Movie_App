import 'package:flutter/material.dart';
import 'package:movie_app/Customes/CardCustomes.dart';
import 'package:movie_app/Views/DeatilsAvalibleSeats.dart';
import 'package:movie_app/Views/DeatilsNotAvalible.dart';

class Deatils extends StatelessWidget {
   final String ImageUrl;
  final String Titlee;
  final String showDate;
  final String showTime;
  final List<dynamic>Seats;

  const new({super.key, required this.ImageUrl,
    required this.Titlee,
    required this.showDate,
    required this.showTime,
    required this.Seats,

    
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(Titlee,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),

      ),
      body: 
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(children: [
     Cardcustomes(ImageUrl: ImageUrl, Titlee: Titlee, showDate: showDate, showTime: showTime),
     SizedBox(height: 10,),
      Text("Select Your Seat"),
                  SizedBox(height: 10,),
                   Expanded(
                     child: GridView.builder( itemCount: Seats.length
                     ,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,crossAxisSpacing: 5),
                       itemBuilder: (context,index)
                       {
                        Seats[index];
                        return GestureDetector(onTap: Seats[index]["status"]=="Available"?(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Deatilsavalibleseats(ImageUrl: ImageUrl, Titlee: Titlee, showDate: showDate, showTime: showTime,SeatNumber: "${Seats[index]["seatNumber"]}",)));
                        }
                        :() => {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Deatilsnotavalible(ImageUrl: ImageUrl, Titlee: Titlee, showDate: showDate, showTime: showTime)))

                        },
                         child: Container(height: 50,width: 50,
                         decoration: BoxDecoration(

                          color: Seats[index]["status"]=="Available"?Colors.amber:Colors.red,
                          borderRadius:BorderRadius.circular(6),
                         ),
                         child: Text("${Seats[index]["seatNumber"]}",textAlign: TextAlign.center,),
                         ),
                       );
                       
                       
                       }),
                   ),
                  
  
  
  ],),
),
    



    );
  }
}