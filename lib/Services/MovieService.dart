import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:movie_app/Models/MovieModel.dart';

class Movieservice {

 static Dio dio =Dio();
 static Future<Moviemodel> GetMovie()async{
  try{
    Response response=await dio.get("https://apimovie.runasp.net/api/Movies");
    return Moviemodel.fromjson(response.data);
    
  }
  catch(e){
    throw Exception(e);
  }
 }

  static Future<void>AddMovie( String CustomerName,int movieId, int seatId,)async{
    try{
    Response response=await dio.post("https://apimovie.runasp.net/api/Bookings",
    data: {
      "CustomerName":CustomerName,
      "movieId":movieId,
      "seatId":seatId,
    }
    ); 
  }
  catch(e){
    throw Exception(e);
  }
  }
  
  static Future<void>UpdateMovie(int id, String CustomerName,int movieId, int seatId,)async{
    try{
    Response response=await dio.put("https://apimovie.runasp.net/api/Bookings/",
    data: {
      "id":id,
      "CustomerName":CustomerName,
      "movieId":movieId,
      "seatId":seatId,
    }
    ); 
  }
  catch(e){
    throw Exception(e);
  }
  }

    static Future<void>DeleteMovie(int id)async{
    try{
    Response response=await dio.delete("https://apimovie.runasp.net/api/Bookings/",
    data: {
      "id":id,
     
    }
    ); 
  }
  catch(e){
    throw Exception(e);
  }
  }

}

