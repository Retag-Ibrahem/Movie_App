import 'package:flutter/foundation.dart';
import 'package:movie_app/Models/MovieModel.dart';
import 'package:movie_app/Services/MovieService.dart';

class Movieprovider extends ChangeNotifier {
Moviemodel?moviemodel;
GetMovieProvider()async{

  moviemodel=await Movieservice.GetMovie();
  notifyListeners();
}
AddMovieProvider(String CustomerName,int movieId, int seatId,)async{
 await Movieservice.AddMovie(CustomerName, movieId, seatId);
  notifyListeners();
}

UpdateMovieProvider(int id,String CustomerName,int movieId, int seatId,)async{
 await Movieservice.UpdateMovie(id,CustomerName, movieId, seatId);
  notifyListeners();
}
DeleteMovieProvider(int id)async{
 await Movieservice.DeleteMovie(id);
  notifyListeners();
}



}